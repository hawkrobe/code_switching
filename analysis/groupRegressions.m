% importing and preparing data

clear all;
close all;

L = readtable('listenerGroups.csv');
L.partnerID = categorical(L.partnerID);
L.partner = categorical(L.partner);

S = readtable('speakerGroups.csv');
S.partnerID = categorical(S.partnerID);
S.partner = categorical(S.partner);

trials = 1:24;

%% Regressions begin

%% Final Listener Confidence Regression

% need: scale, values, trial 24, partners, group 1

g1ID = L.partner == 'group1';
% filtered for only group 1 probabilities in val
L = L(g1ID,:);
t24ID = L.trialNum == 24;
% filtered for only the final trial
L = L(t24ID,:);
p234ID = L.partnerID ~= 'partner1';
L = L(p234ID,:);

% regress confidence by scale, partner2, partner3, partner4

Lconf = abs(L.val - 0.5);
Lp2 = L.partnerID == 'partner2';
Lp3 = L.partnerID == 'partner3';
Lp4 = L.partnerID == 'partner4';
Lscale = log(L.scale);

X = [Lscale, Lp2, Lp3, Lp4];
Lconfmdl = fitlm(X,Lconf)

%% Listener learning speed regression

% regress learning speed by scale, partner2, partner3, partner4
% learning speed = difference between trial 7-8, 13-14, 19-20
% trialNum = blah

% group 1 excluding partner1s
g1ID = L.partner == 'group1';
L = L(g1ID,:);
p234ID = L.partnerID ~= 'partner1';
L = L(p234ID,:);

Lt7 = L(L.trialNum == 7, :);
Lt8 = L(L.trialNum == 8, :);
Lt13 = L(L.trialNum == 13, :);
Lt14 = L(L.trialNum == 14, :);
Lt19 = L(L.trialNum == 19, :);
Lt20 = L(L.trialNum == 20, :);

Lspeed = zeros(1800,1);
Lb1 = abs((Lt8.val - Lt7.val)./Lt7.val);
Lb2 = abs((Lt14.val - Lt13.val)./Lt13.val);
Lb3 = abs((Lt20.val - Lt19.val)./Lt19.val);

Lp2 = Lt7.partnerID == 'partner2';
Lp3 = Lt7.partnerID == 'partner3';
Lp4 = Lt7.partnerID == 'partner4';

for i = 1:1800
   if Lp2(i)
       Lspeed(i) = Lb1(i);
   elseif Lp3(i)
       Lspeed(i) = Lb2(i);
   elseif Lp4(i)
       Lspeed(i) = Lb3(i);
   end
end

Lscale = log(Lt7.scale);

X = [Lscale, Lp2, Lp3, Lp4];
Lspeedmdl = fitlm(X,Lspeed)


%% Final Speaker Confidence Regression

% need: scale, values, trial 24, partners, group 1

g1ID = S.partner == 'group1';
% filtered for only group 1 probabilities in val
S = S(g1ID,:);
t24ID = S.trialNum == 24;
% filtered for only the final trial
S = S(t24ID,:);
p234ID = S.partnerID ~= 'partner1';
S = S(p234ID,:);

% regress confidence by scale, partner2, partner3, partner4
Sconf = abs(S.val - 0.5);
Sp2 = S.partnerID == 'partner2';
Sp3 = S.partnerID == 'partner3';
Sp4 = S.partnerID == 'partner4';
Sscale = log(S.scale);

X = [Sscale, Sp2, Sp3, Sp4];
Sconfmdl = fitlm(X,Sconf)

%% Speaker learning speed regression

% regress learning speed by scale, partner2, partner3, partner4
% learning speed = difference between trial 7-8, 13-14, 19-20
% trialNum = blah

% group 1 excluding partner1s
g1ID = S.partner == 'group1';
S = S(g1ID,:);
p234ID = S.partnerID ~= 'partner1';
S = S(p234ID,:);

St7 = S(S.trialNum == 7, :);
St8 = S(S.trialNum == 8, :);
St13 = S(S.trialNum == 13, :);
St14 = S(S.trialNum == 14, :);
St19 = S(S.trialNum == 19, :);
St20 = S(S.trialNum == 20, :);

Lspeed = zeros(1800,1);
Sb1 = abs((St8.val - St7.val)./St7.val);
Sb2 = abs((St14.val - St13.val)./St13.val);
Sb3 = abs((St20.val - St19.val)./St19.val);

Sp2 = St7.partnerID == 'partner2';
Sp3 = St7.partnerID == 'partner3';
Sp4 = St7.partnerID == 'partner4';

for i = 1:1800
   if Sp2(i)
       Sspeed(i) = Sb1(i);
   elseif Sp3(i)
       Sspeed(i) = Sb2(i);
   elseif Sp4(i)
       Sspeed(i) = Sb3(i);
   end
end

Sscale = log(St7.scale);

X = [Sscale, Sp2, Sp3, Sp4];
Sspeedmdl = fitlm(X,Sspeed)


%% Dual Inference Regressions --------------------------------------------

%% Importing data

clear all;
close all;

L = readtable('flexibleListenerGroups.csv');
L.partnerID = categorical(L.partnerID);
L.partner = categorical(L.partner);

S = readtable('flexibleSpeakerGroups.csv');
S.partnerID = categorical(S.partnerID);
S.partner = categorical(S.partner);

trials = 1:24;

%% Final Listener Confidence Regression

% need: scale, values, trial 24, partners, group 1

g1ID = L.partner == 'group1';
% filtered for only group 1 probabilities in val
L = L(g1ID,:);
t24ID = L.trialNum == 24;
% filtered for only the final trial
L = L(t24ID,:);
p234ID = L.partnerID ~= 'partner1';
L = L(p234ID,:);

% regress confidence by scale, partner2, partner3, partner4

Lconf = abs(L.val - 0.5);
Lp2 = L.partnerID == 'partner2';
Lp3 = L.partnerID == 'partner3';
Lp4 = L.partnerID == 'partner4';
Lscale = log(L.scale);
Ldual = L.dual;

X = [Lscale, Ldual, Lp2, Lp3, Lp4];
Lconfmdl = fitlm(X,Lconf)

%% Listener learning speed regression

% regress learning speed by scale, partner2, partner3, partner4
% learning speed = difference between trial 7-8, 13-14, 19-20
% trialNum = blah

% group 1 excluding partner1s
g1ID = L.partner == 'group1';
L = L(g1ID,:);
p234ID = L.partnerID ~= 'partner1';
L = L(p234ID,:);

Lt7 = L(L.trialNum == 7, :);
Lt8 = L(L.trialNum == 8, :);
Lt13 = L(L.trialNum == 13, :);
Lt14 = L(L.trialNum == 14, :);
Lt19 = L(L.trialNum == 19, :);
Lt20 = L(L.trialNum == 20, :);

Lspeed = zeros(2700,1);
Lb1 = abs((Lt8.val - Lt7.val)./Lt7.val);
Lb2 = abs((Lt14.val - Lt13.val)./Lt13.val);
Lb3 = abs((Lt20.val - Lt19.val)./Lt19.val);

Lp2 = Lt7.partnerID == 'partner2';
Lp3 = Lt7.partnerID == 'partner3';
Lp4 = Lt7.partnerID == 'partner4';

for i = 1:2700
   if Lp2(i)
       Lspeed(i) = Lb1(i);
   elseif Lp3(i)
       Lspeed(i) = Lb2(i);
   elseif Lp4(i)
       Lspeed(i) = Lb3(i);
   end
end

Lscale = log(Lt7.scale);
Ldual = Lt7.dual;

X = [Ldual, Lscale, Lp2, Lp3, Lp4];
Lspeedmdl = fitlm(X,Lspeed)

%% Final Speaker Confidence Regression

% need: scale, values, trial 24, partners, group 1

g1ID = S.partner == 'group1';
% filtered for only group 1 probabilities in val
S = S(g1ID,:);
t24ID = S.trialNum == 24;
% filtered for only the final trial
S = S(t24ID,:);
p234ID = S.partnerID ~= 'partner1';
S = S(p234ID,:);

% regress confidence by scale, partner2, partner3, partner4
Sconf = abs(S.val - 0.5);
Sp2 = S.partnerID == 'partner2';
Sp3 = S.partnerID == 'partner3';
Sp4 = S.partnerID == 'partner4';
Sscale = log(S.scale);
Sdual = S.dual;

X = [Sdual, Sscale, Sp2, Sp3, Sp4];
Sconfmdl = fitlm(X,Sconf)

%% Speaker learning speed regression

% regress learning speed by scale, partner2, partner3, partner4
% learning speed = difference between trial 7-8, 13-14, 19-20
% trialNum = blah

% group 1 excluding partner1s
g1ID = S.partner == 'group1';
S = S(g1ID,:);
p234ID = S.partnerID ~= 'partner1';
S = S(p234ID,:);

St7 = S(S.trialNum == 7, :);
St8 = S(S.trialNum == 8, :);
St13 = S(S.trialNum == 13, :);
St14 = S(S.trialNum == 14, :);
St19 = S(S.trialNum == 19, :);
St20 = S(S.trialNum == 20, :);

Lspeed = zeros(2700,1);
Sb1 = abs((St8.val - St7.val)./St7.val);
Sb2 = abs((St14.val - St13.val)./St13.val);
Sb3 = abs((St20.val - St19.val)./St19.val);

Sp2 = St7.partnerID == 'partner2';
Sp3 = St7.partnerID == 'partner3';
Sp4 = St7.partnerID == 'partner4';

for i = 1:2700
   if Sp2(i)
       Sspeed(i) = Sb1(i);
   elseif Sp3(i)
       Sspeed(i) = Sb2(i);
   elseif Sp4(i)
       Sspeed(i) = Sb3(i);
   end
end

Sscale = log(St7.scale);
Sdual = St7.dual;

X = [Sdual, Sscale, Sp2, Sp3, Sp4];
Sspeedmdl = fitlm(X,Sspeed)
