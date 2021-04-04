% importing and preparing data

clear all;
close all;

TL005 = readtable('listener0.05_clean.csv');
TL005.partnerID = categorical(TL005.partnerID);
TL005.partner = categorical(TL005.partner);
TL01 = readtable('listener0.1_clean.csv');
TL01.partnerID = categorical(TL01.partnerID);
TL01.partner = categorical(TL01.partner);
TL05 = readtable('listener0.5_clean.csv');
TL05.partnerID = categorical(TL05.partnerID);
TL05.partner = categorical(TL05.partner);
TL1 = readtable('listener1_clean.csv');
TL1.partnerID = categorical(TL1.partnerID);
TL1.partner = categorical(TL1.partner);
TL5 = readtable('listener5_clean.csv');
TL5.partnerID = categorical(TL5.partnerID);
TL5.partner = categorical(TL5.partner);
TL10 = readtable('listener10_clean.csv');
TL10.partnerID = categorical(TL10.partnerID);
TL10.partner = categorical(TL10.partner);

TS005 = readtable('speaker0.05_clean.csv');
TS005.partnerID = categorical(TS005.partnerID);
TS005.partner = categorical(TS005.partner);
TS01 = readtable('speaker0.1_clean.csv');
TS01.partnerID = categorical(TS01.partnerID);
TS01.partner = categorical(TS01.partner);
TS05 = readtable('speaker0.5_clean.csv');
TS05.partnerID = categorical(TS05.partnerID);
TS05.partner = categorical(TS05.partner);
TS1 = readtable('speaker1_clean.csv');
TS1.partnerID = categorical(TS1.partnerID);
TS1.partner = categorical(TS1.partner);
TS5 = readtable('speaker5_clean.csv');
TS5.partnerID = categorical(TS5.partnerID);
TS5.partner = categorical(TS5.partner);
TS10 = readtable('speaker10_clean.csv');
TS10.partnerID = categorical(TS10.partnerID);
TS10.partner = categorical(TS10.partner);

trials = 1:24;

%% Listener Trials: P(Group 1) over time

% Scaling parameter = 0.05 ---------------------------------------------

figure(1)
% Partner 2 Group 1
p2ID = TL005.partnerID == 'partner2';
p2TL005 = TL005(p2ID,:);
p2g1ID = p2TL005.partner == 'group1';
p2g1TL005 = p2TL005(p2g1ID,:);
plot(p2g1TL005.trialNum, p2g1TL005.val);
hold on;

%p3g1
p3ID = TL005.partnerID == 'partner3';
p3TL005 = TL005(p3ID,:);
p3g1ID = p3TL005.partner == 'group1';
p3g1TL005 = p3TL005(p3g1ID,:);
plot(p3g1TL005.trialNum, p3g1TL005.val);
hold on;

%p4g1
p4ID = TL005.partnerID == 'partner4';
p4TL005 = TL005(p4ID,:);
p4g1ID = p4TL005.partner == 'group1';
p4g1TL005 = p4TL005(p4g1ID,:);
plot(p4g1TL005.trialNum, p4g1TL005.val);
hold off;

title('Probability of being in Group 1 (\alpha = 0.05)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 1])

% Scaling parameter = 0.1 ---------------------------------------------

figure(2)
% Partner 2 Group 1
p2ID = TL01.partnerID == 'partner2';
p2TL01 = TL01(p2ID,:);
p2g1ID = p2TL01.partner == 'group1';
p2g1TL01 = p2TL01(p2g1ID,:);
plot(p2g1TL01.trialNum, p2g1TL01.val);
hold on;

%p3g1
p3ID = TL01.partnerID == 'partner3';
p3TL01 = TL01(p3ID,:);
p3g1ID = p3TL01.partner == 'group1';
p3g1TL01 = p3TL01(p3g1ID,:);
plot(p3g1TL01.trialNum, p3g1TL01.val);
hold on;

%p4g1
p4ID = TL01.partnerID == 'partner4';
p4TL01 = TL01(p4ID,:);
p4g1ID = p4TL01.partner == 'group1';
p4g1TL01 = p4TL01(p4g1ID,:);
plot(p4g1TL01.trialNum, p4g1TL01.val);
hold off;

title('Probability of being in Group 1 (\alpha = 0.1)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
yline(0.5, ':', '0.50');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 1])

% Scaling parameter = 0.5 ---------------------------------------------

figure(3)
% Partner 2 Group 1
p2ID = TL05.partnerID == 'partner2';
p2TL05 = TL05(p2ID,:);
p2g1ID = p2TL05.partner == 'group1';
p2g1TL05 = p2TL05(p2g1ID,:);
plot(p2g1TL05.trialNum, p2g1TL05.val);
hold on;

%p3g1
p3ID = TL05.partnerID == 'partner3';
p3TL05 = TL05(p3ID,:);
p3g1ID = p3TL05.partner == 'group1';
p3g1TL05 = p3TL05(p3g1ID,:);
plot(p3g1TL05.trialNum, p3g1TL05.val);
hold on;

%p4g1
p4ID = TL05.partnerID == 'partner4';
p4TL05 = TL05(p4ID,:);
p4g1ID = p4TL05.partner == 'group1';
p4g1TL05 = p4TL05(p4g1ID,:);
plot(p4g1TL05.trialNum, p4g1TL05.val);
hold off;

title('Probability of being in Group 1 (\alpha = 0.5)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
yline(0.5, ':', '0.50');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 1])

% Scaling parameter = 1 ---------------------------------------------

figure(4)
% Partner 2 Group 1
p2ID = TL1.partnerID == 'partner2';
p2TL1 = TL1(p2ID,:);
p2g1ID = p2TL1.partner == 'group1';
p2g1TL1 = p2TL1(p2g1ID,:);
plot(p2g1TL1.trialNum, p2g1TL1.val);
hold on;

%p3g1
p3ID = TL1.partnerID == 'partner3';
p3TL1 = TL1(p3ID,:);
p3g1ID = p3TL1.partner == 'group1';
p3g1TL1 = p3TL1(p3g1ID,:);
plot(p3g1TL1.trialNum, p3g1TL1.val);
hold on;

%p4g1
p4ID = TL1.partnerID == 'partner4';
p4TL1 = TL1(p4ID,:);
p4g1ID = p4TL1.partner == 'group1';
p4g1TL1 = p4TL1(p4g1ID,:);
plot(p4g1TL1.trialNum, p4g1TL1.val);
hold off;

title('Probability of being in Group 1 (\alpha = 1)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
yline(0.5, ':', '0.50');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 1])

% Scaling parameter = 5 ---------------------------------------------

figure(5)
% Partner 2 Group 1
p2ID = TL5.partnerID == 'partner2';
p2TL5 = TL5(p2ID,:);
p2g1ID = p2TL5.partner == 'group1';
p2g1TL5 = p2TL5(p2g1ID,:);
plot(p2g1TL5.trialNum, p2g1TL5.val);
hold on;

%p3g1
p3ID = TL5.partnerID == 'partner3';
p3TL5 = TL5(p3ID,:);
p3g1ID = p3TL5.partner == 'group1';
p3g1TL5 = p3TL5(p3g1ID,:);
plot(p3g1TL5.trialNum, p3g1TL5.val);
hold on;

%p4g1
p4ID = TL5.partnerID == 'partner4';
p4TL5 = TL5(p4ID,:);
p4g1ID = p4TL5.partner == 'group1';
p4g1TL5 = p4TL5(p4g1ID,:);
plot(p4g1TL5.trialNum, p4g1TL5.val);
hold off;

title('Probability of being in Group 1 (\alpha = 5)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
yline(0.5, ':', '0.50');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 1])

% Scaling parameter = 10 ---------------------------------------------

figure(6)
% Partner 2 Group 1
p2ID = TL10.partnerID == 'partner2';
p2TL10 = TL10(p2ID,:);
p2g1ID = p2TL10.partner == 'group1';
p2g1TL10 = p2TL10(p2g1ID,:);
plot(p2g1TL10.trialNum, p2g1TL10.val);
hold on;

%p3g1
p3ID = TL10.partnerID == 'partner3';
p3TL10 = TL10(p3ID,:);
p3g1ID = p3TL10.partner == 'group1';
p3g1TL10 = p3TL10(p3g1ID,:);
plot(p3g1TL10.trialNum, p3g1TL10.val);
hold on;

%p4g1
p4ID = TL10.partnerID == 'partner4';
p4TL10 = TL10(p4ID,:);
p4g1ID = p4TL10.partner == 'group1';
p4g1TL10 = p4TL10(p4g1ID,:);
plot(p4g1TL10.trialNum, p4g1TL10.val);
hold off;

title('Probability of being in Group 1 (\alpha = 10)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
yline(0.5, ':', '0.50');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 1])



%% Listener confidence over time

% Partner 1 ------------------------------------------------------------

figure(7)
plot(trials, abs(0.5 - p2g1TL005.val))
hold on
plot(trials, abs(0.5 - p2g1TL01.val))
hold on
plot(trials, abs(0.5 - p2g1TL05.val))
hold on
plot(trials, abs(0.5 - p2g1TL1.val))
hold on
plot(trials, abs(0.5 - p2g1TL5.val))
hold on
plot(trials, abs(0.5 - p2g1TL10.val))
hold off

title('Listener Confidence Over Time - Partner 2');
xlabel('Trial Number');
ylabel('|P(Group 1) - 0.5|');
xline(7, ':', 'Partner 2 Start');
%xline(13, ':', 'Partner 3 Start');
%xline(19, ':', 'Partner 4 Start');
legend({'\alpha = 0.05', '\alpha = 0.1', '\alpha = 0.5', '\alpha = 1', '\alpha = 5', '\alpha = 10'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 0.5])

% Partner 3 --------------------------------------------------------------

figure(8)
plot(trials, abs(0.5 - p3g1TL005.val))
hold on
plot(trials, abs(0.5 - p3g1TL01.val))
hold on
plot(trials, abs(0.5 - p3g1TL05.val))
hold on
plot(trials, abs(0.5 - p3g1TL1.val))
hold on
plot(trials, abs(0.5 - p3g1TL5.val))
hold on
plot(trials, abs(0.5 - p3g1TL10.val))
hold off

title('Listener Confidence Over Time - Partner 3');
xlabel('Trial Number');
ylabel('|P(Group 1) - 0.5|');
%xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
%xline(19, ':', 'Partner 4 Start');
legend({'\alpha = 0.05', '\alpha = 0.1', '\alpha = 0.5', '\alpha = 1', '\alpha = 5', '\alpha = 10'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 0.5])

% Partner 4 -----------------------------------------------------------

figure(9)
plot(trials, abs(0.5 - p4g1TL005.val))
hold on
plot(trials, abs(0.5 - p4g1TL01.val))
hold on
plot(trials, abs(0.5 - p4g1TL05.val))
hold on
plot(trials, abs(0.5 - p4g1TL1.val))
hold on
plot(trials, abs(0.5 - p4g1TL5.val))
hold on
plot(trials, abs(0.5 - p4g1TL10.val))
hold off

title('Listener Confidence Over Time - Partner 4');
xlabel('Trial Number');
ylabel('|P(Group 1) - 0.5|');
%xline(7, ':', 'Partner 2 Start');
%xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
legend({'\alpha = 0.05', '\alpha = 0.1', '\alpha = 0.5', '\alpha = 1', '\alpha = 5', '\alpha = 10'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 0.5])


%% Final listener confidence by scaling parameter

% Average of final 5 trials (20-24) --------------------------------------

partners = [2 3 4];
logScales = log([0.05 0.1 0.5 1 5 10]);

abs(0.5 - p2g1TL005.val)

L005finavg = [mean(p2g1TL005.val(20:24)) mean(p3g1TL005.val(20:24)) mean(p4g1TL005.val(20:24))];
L01finavg = [mean(p2g1TL01.val(20:24)) mean(p3g1TL01.val(20:24)) mean(p4g1TL01.val(20:24))];
L05finavg = [mean(p2g1TL05.val(20:24)) mean(p3g1TL05.val(20:24)) mean(p4g1TL05.val(20:24))];
L1finavg = [mean(p2g1TL1.val(20:24)) mean(p3g1TL1.val(20:24)) mean(p4g1TL1.val(20:24))];
L5finavg = [mean(p2g1TL5.val(20:24)) mean(p3g1TL5.val(20:24)) mean(p4g1TL5.val(20:24))];
L10finavg = [mean(p2g1TL10.val(20:24)) mean(p3g1TL10.val(20:24)) mean(p4g1TL10.val(20:24))];

p2finavg = [L005finavg(1) L01finavg(1) L05finavg(1) L1finavg(1) L5finavg(1) L10finavg(1)];
p3finavg = [L005finavg(2) L01finavg(2) L05finavg(2) L1finavg(2) L5finavg(2) L10finavg(2)];
p4finavg = [L005finavg(3) L01finavg(3) L05finavg(3) L1finavg(3) L5finavg(3) L10finavg(3)];

figure(13)
plot(logScales, abs(0.5-p2finavg));
hold on
plot(logScales, abs(0.5-p3finavg));
hold on
plot(logScales, abs(0.5-p4finavg));
hold off

title('Average Final Listener Confidence by (log) \alpha')
xlabel('\alpha');
ylabel('|P(Group 1) - 0.5|');
legend({'Partner 2', 'Partner 3', 'Partner 4'})
set(gca,'XLim',[-3.2 2.5],'YLim',[0 0.5])
xticks(logScales)
xticklabels({'0.05', '0.1', '0.5', '1', '5', '10'});


%% Listener learning speed by scaling parameter

logScales = log([0.05 0.1 0.5 1 5 10]);

%absolute percent change between first and second trial for each partner
L005speed = [abs((p2g1TL005.val(8)-p2g1TL005.val(7))/p2g1TL005.val(7)) ...
             abs((p3g1TL005.val(14)-p3g1TL005.val(13))/p3g1TL005.val(13))...
             abs((p4g1TL005.val(20)-p4g1TL005.val(19))/p4g1TL005.val(19))];
L01speed = [abs((p2g1TL01.val(8)-p2g1TL01.val(7))/p2g1TL01.val(7)) ...
             abs((p3g1TL01.val(14)-p3g1TL01.val(13))/p3g1TL01.val(13))...
             abs((p4g1TL01.val(20)-p4g1TL01.val(19))/p4g1TL01.val(19))];
L05speed = [abs((p2g1TL05.val(8)-p2g1TL05.val(7))/p2g1TL05.val(7)) ...
             abs((p3g1TL05.val(14)-p3g1TL05.val(13))/p3g1TL05.val(13))...
             abs((p4g1TL05.val(20)-p4g1TL05.val(19))/p4g1TL05.val(19))];
L1speed = [abs((p2g1TL1.val(8)-p2g1TL1.val(7))/p2g1TL1.val(7)) ...
             abs((p3g1TL1.val(14)-p3g1TL1.val(13))/p3g1TL1.val(13))...
             abs((p4g1TL1.val(20)-p4g1TL1.val(19))/p4g1TL1.val(19))];
L5speed = [abs((p2g1TL5.val(8)-p2g1TL5.val(7))/p2g1TL5.val(7)) ...
             abs((p3g1TL5.val(14)-p3g1TL5.val(13))/p3g1TL5.val(13))...
             abs((p4g1TL5.val(20)-p4g1TL5.val(19))/p4g1TL5.val(19))];
L10speed = [abs((p2g1TL10.val(8)-p2g1TL10.val(7))/p2g1TL10.val(7)) ...
             abs((p3g1TL10.val(14)-p3g1TL10.val(13))/p3g1TL10.val(13))...
             abs((p4g1TL10.val(20)-p4g1TL10.val(19))/p4g1TL10.val(19))];

figure(15)
p2speed = [L005speed(1) L01speed(1) L05speed(1) L1speed(1) L5speed(1) L10speed(1)];
plot(logScales, p2speed);
hold on;
p3speed = [L005speed(2) L01speed(2) L05speed(2) L1speed(2) L5speed(2) L10speed(2)];
plot(logScales, p3speed);
hold on;
p4speed = [L005speed(3) L01speed(3) L05speed(3) L1speed(3) L5speed(3) L10speed(3)];
plot(logScales, p4speed);
hold off;

title('Listener Learning Speed by (log) \alpha')
xlabel('\alpha');
ylabel('Percent Change between first two trials');
legend({'Partner 2', 'Partner 3', 'Partner 4'});
set(gca,'XLim',[-3.2 2.5],'YLim',[0 0.8])
xticks(logScales)
xticklabels({'0.05', '0.1', '0.5', '1', '5', '10'});

%% Table: Listener Confidence and Speed across scales
Lconfvalues = [mean(abs(0.5-L005finavg)) mean(abs(0.5-L01finavg)) mean(abs(0.5-L05finavg)) mean(abs(0.5-L1finavg)) mean(abs(0.5-L5finavg)) mean(abs(0.5-L10finavg))];
Lspeedvalues = [mean(L005speed) mean(L01speed) mean(L05speed) mean(L1speed) mean(L5speed) mean(L10speed)];


%% Speaker simulations

%% speaker Trials: P(Group 1) over time

% Scaling parameter = 0.05 ---------------------------------------------

figure(1)
% Partner 2 Group 1
p2ID = TS005.partnerID == 'partner2';
p2TS005 = TS005(p2ID,:);
p2g1ID = p2TS005.partner == 'group1';
p2g1TS005 = p2TS005(p2g1ID,:);
plot(p2g1TS005.trialNum, p2g1TS005.val);
hold on;

%p3g1
p3ID = TS005.partnerID == 'partner3';
p3TS005 = TS005(p3ID,:);
p3g1ID = p3TS005.partner == 'group1';
p3g1TS005 = p3TS005(p3g1ID,:);
plot(p3g1TS005.trialNum, p3g1TS005.val);
hold on;

%p4g1
p4ID = TS005.partnerID == 'partner4';
p4TS005 = TS005(p4ID,:);
p4g1ID = p4TS005.partner == 'group1';
p4g1TS005 = p4TS005(p4g1ID,:);
plot(p4g1TS005.trialNum, p4g1TS005.val);
hold off;

title('Probability of being in Group 1 (\alpha = 0.05)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 1])

% Scaling parameter = 0.1 ---------------------------------------------

figure(2)
% Partner 2 Group 1
p2ID = TS01.partnerID == 'partner2';
p2TS01 = TS01(p2ID,:);
p2g1ID = p2TS01.partner == 'group1';
p2g1TS01 = p2TS01(p2g1ID,:);
plot(p2g1TS01.trialNum, p2g1TS01.val);
hold on;

%p3g1
p3ID = TS01.partnerID == 'partner3';
p3TS01 = TS01(p3ID,:);
p3g1ID = p3TS01.partner == 'group1';
p3g1TS01 = p3TS01(p3g1ID,:);
plot(p3g1TS01.trialNum, p3g1TS01.val);
hold on;

%p4g1
p4ID = TS01.partnerID == 'partner4';
p4TS01 = TS01(p4ID,:);
p4g1ID = p4TS01.partner == 'group1';
p4g1TS01 = p4TS01(p4g1ID,:);
plot(p4g1TS01.trialNum, p4g1TS01.val);
hold off;

title('Probability of being in Group 1 (\alpha = 0.1)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
yline(0.5, ':', '0.50');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 1])

% Scaling parameter = 0.5 ---------------------------------------------

figure(3)
% Partner 2 Group 1
p2ID = TS05.partnerID == 'partner2';
p2TS05 = TS05(p2ID,:);
p2g1ID = p2TS05.partner == 'group1';
p2g1TS05 = p2TS05(p2g1ID,:);
plot(p2g1TS05.trialNum, p2g1TS05.val);
hold on;

%p3g1
p3ID = TS05.partnerID == 'partner3';
p3TS05 = TS05(p3ID,:);
p3g1ID = p3TS05.partner == 'group1';
p3g1TS05 = p3TS05(p3g1ID,:);
plot(p3g1TS05.trialNum, p3g1TS05.val);
hold on;

%p4g1
p4ID = TS05.partnerID == 'partner4';
p4TS05 = TS05(p4ID,:);
p4g1ID = p4TS05.partner == 'group1';
p4g1TS05 = p4TS05(p4g1ID,:);
plot(p4g1TS05.trialNum, p4g1TS05.val);
hold off;

title('Probability of being in Group 1 (\alpha = 0.5)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
yline(0.5, ':', '0.50');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 1])

% Scaling parameter = 1 ---------------------------------------------

figure(4)
% Partner 2 Group 1
p2ID = TS1.partnerID == 'partner2';
p2TS1 = TS1(p2ID,:);
p2g1ID = p2TS1.partner == 'group1';
p2g1TS1 = p2TS1(p2g1ID,:);
plot(p2g1TS1.trialNum, p2g1TS1.val);
hold on;

%p3g1
p3ID = TS1.partnerID == 'partner3';
p3TS1 = TS1(p3ID,:);
p3g1ID = p3TS1.partner == 'group1';
p3g1TS1 = p3TS1(p3g1ID,:);
plot(p3g1TS1.trialNum, p3g1TS1.val);
hold on;

%p4g1
p4ID = TS1.partnerID == 'partner4';
p4TS1 = TS1(p4ID,:);
p4g1ID = p4TS1.partner == 'group1';
p4g1TS1 = p4TS1(p4g1ID,:);
plot(p4g1TS1.trialNum, p4g1TS1.val);
hold off;

title('Probability of being in Group 1 (\alpha = 1)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
yline(0.5, ':', '0.50');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 1])

% Scaling parameter = 5 ---------------------------------------------

figure(5)
% Partner 2 Group 1
p2ID = TS5.partnerID == 'partner2';
p2TS5 = TS5(p2ID,:);
p2g1ID = p2TS5.partner == 'group1';
p2g1TS5 = p2TS5(p2g1ID,:);
plot(p2g1TS5.trialNum, p2g1TS5.val);
hold on;

%p3g1
p3ID = TS5.partnerID == 'partner3';
p3TS5 = TS5(p3ID,:);
p3g1ID = p3TS5.partner == 'group1';
p3g1TS5 = p3TS5(p3g1ID,:);
plot(p3g1TS5.trialNum, p3g1TS5.val);
hold on;

%p4g1
p4ID = TS5.partnerID == 'partner4';
p4TS5 = TS5(p4ID,:);
p4g1ID = p4TS5.partner == 'group1';
p4g1TS5 = p4TS5(p4g1ID,:);
plot(p4g1TS5.trialNum, p4g1TS5.val);
hold off;

title('Probability of being in Group 1 (\alpha = 5)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
yline(0.5, ':', '0.50');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 1])

% Scaling parameter = 10 ---------------------------------------------

figure(6)
% Partner 2 Group 1
p2ID = TS10.partnerID == 'partner2';
p2TS10 = TS10(p2ID,:);
p2g1ID = p2TS10.partner == 'group1';
p2g1TS10 = p2TS10(p2g1ID,:);
plot(p2g1TS10.trialNum, p2g1TS10.val);
hold on;

%p3g1
p3ID = TS10.partnerID == 'partner3';
p3TS10 = TS10(p3ID,:);
p3g1ID = p3TS10.partner == 'group1';
p3g1TS10 = p3TS10(p3g1ID,:);
plot(p3g1TS10.trialNum, p3g1TS10.val);
hold on;

%p4g1
p4ID = TS10.partnerID == 'partner4';
p4TS10 = TS10(p4ID,:);
p4g1ID = p4TS10.partner == 'group1';
p4g1TS10 = p4TS10(p4g1ID,:);
plot(p4g1TS10.trialNum, p4g1TS10.val);
hold off;

title('Probability of being in Group 1 (\alpha = 10)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
yline(0.5, ':', '0.50');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 1])



%% speaker confidence over time

% Partner 2 ------------------------------------------------------------

figure(7)
plot(trials, abs(0.5 - p2g1TS005.val))
hold on
plot(trials, abs(0.5 - p2g1TS01.val))
hold on
plot(trials, abs(0.5 - p2g1TS05.val))
hold on
plot(trials, abs(0.5 - p2g1TS1.val))
hold on
plot(trials, abs(0.5 - p2g1TS5.val))
hold on
plot(trials, abs(0.5 - p2g1TS10.val))
hold off

title('Speaker Confidence Over Time - Partner 2');
xlabel('Trial Number');
ylabel('|P(Group 1) - 0.5|');
xline(7, ':', 'Partner 2 Start');
%xline(13, ':', 'Partner 3 Start');
%xline(19, ':', 'Partner 4 Start');
legend({'\alpha = 0.05', '\alpha = 0.1', '\alpha = 0.5', '\alpha = 1', '\alpha = 5', '\alpha = 10'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 0.5])

% Partner 3 --------------------------------------------------------------

figure(8)
plot(trials, abs(0.5 - p3g1TS005.val))
hold on
plot(trials, abs(0.5 - p3g1TS01.val))
hold on
plot(trials, abs(0.5 - p3g1TS05.val))
hold on
plot(trials, abs(0.5 - p3g1TS1.val))
hold on
plot(trials, abs(0.5 - p3g1TS5.val))
hold on
plot(trials, abs(0.5 - p3g1TS10.val))
hold off

title('Speaker Confidence Over Time - Partner 3');
xlabel('Trial Number');
ylabel('|P(Group 1) - 0.5|');
%xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
%xline(19, ':', 'Partner 4 Start');
legend({'\alpha = 0.05', '\alpha = 0.1', '\alpha = 0.5', '\alpha = 1', '\alpha = 5', '\alpha = 10'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 0.5])

% Partner 4 -----------------------------------------------------------

figure(9)
plot(trials, abs(0.5 - p4g1TS005.val))
hold on
plot(trials, abs(0.5 - p4g1TS01.val))
hold on
plot(trials, abs(0.5 - p4g1TS05.val))
hold on
plot(trials, abs(0.5 - p4g1TS1.val))
hold on
plot(trials, abs(0.5 - p4g1TS5.val))
hold on
plot(trials, abs(0.5 - p4g1TS10.val))
hold off

title('Speaker Confidence Over Time - Partner 4');
xlabel('Trial Number');
ylabel('|P(Group 1) - 0.5|');
%xline(7, ':', 'Partner 2 Start');
%xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
legend({'\alpha = 0.05', '\alpha = 0.1', '\alpha = 0.5', '\alpha = 1', '\alpha = 5', '\alpha = 10'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 0.5])


%% Final speaker confidence by scaling parameter

% Average of final 5 trials (20-24) --------------------------------------

partners = [2 3 4];
logScales = log([0.05 0.1 0.5 1 5 10]);

abs(0.5 - p2g1TS005.val)

S005finavg = [mean(p2g1TS005.val(20:24)) mean(p3g1TS005.val(20:24)) mean(p4g1TS005.val(20:24))];
S01finavg = [mean(p2g1TS01.val(20:24)) mean(p3g1TS01.val(20:24)) mean(p4g1TS01.val(20:24))];
S05finavg = [mean(p2g1TS05.val(20:24)) mean(p3g1TS05.val(20:24)) mean(p4g1TS05.val(20:24))];
S1finavg = [mean(p2g1TS1.val(20:24)) mean(p3g1TS1.val(20:24)) mean(p4g1TS1.val(20:24))];
S5finavg = [mean(p2g1TS5.val(20:24)) mean(p3g1TS5.val(20:24)) mean(p4g1TS5.val(20:24))];
S10finavg = [mean(p2g1TS10.val(20:24)) mean(p3g1TS10.val(20:24)) mean(p4g1TS10.val(20:24))];

p2finavg = [S005finavg(1) S01finavg(1) S05finavg(1) S1finavg(1) S5finavg(1) S10finavg(1)];
p3finavg = [S005finavg(2) S01finavg(2) S05finavg(2) S1finavg(2) S5finavg(2) S10finavg(2)];
p4finavg = [S005finavg(3) S01finavg(3) S05finavg(3) S1finavg(3) S5finavg(3) S10finavg(3)];

figure(13)
plot(logScales, abs(0.5-p2finavg));
hold on
plot(logScales, abs(0.5-p3finavg));
hold on
plot(logScales, abs(0.5-p4finavg));
hold off

title('Average Final Speaker Confidence by (log) \alpha')
xlabel('\alpha');
ylabel('|P(Group 1) - 0.5|');
legend({'Partner 2', 'Partner 3', 'Partner 4'})
set(gca,'XLim',[-3.2 2.5],'YLim',[0 0.5])
xticks(logScales)
xticklabels({'0.05', '0.1', '0.5', '1', '5', '10'});


%% Speaker learning speed by scaling parameter

logScales = log([0.05 0.1 0.5 1 5 10]);

%absolute percent change between first and second trial for each partner
S005speed = [abs((p2g1TS005.val(8)-p2g1TS005.val(7))/p2g1TS005.val(7)) ...
             abs((p3g1TS005.val(14)-p3g1TS005.val(13))/p3g1TS005.val(13))...
             abs((p4g1TS005.val(20)-p4g1TS005.val(19))/p4g1TS005.val(19))];
S01speed = [abs((p2g1TS01.val(8)-p2g1TS01.val(7))/p2g1TS01.val(7)) ...
             abs((p3g1TS01.val(14)-p3g1TS01.val(13))/p3g1TS01.val(13))...
             abs((p4g1TS01.val(20)-p4g1TS01.val(19))/p4g1TS01.val(19))];
S05speed = [abs((p2g1TS05.val(8)-p2g1TS05.val(7))/p2g1TS05.val(7)) ...
             abs((p3g1TS05.val(14)-p3g1TS05.val(13))/p3g1TS05.val(13))...
             abs((p4g1TS05.val(20)-p4g1TS05.val(19))/p4g1TS05.val(19))];
S1speed = [abs((p2g1TS1.val(8)-p2g1TS1.val(7))/p2g1TS1.val(7)) ...
             abs((p3g1TS1.val(14)-p3g1TS1.val(13))/p3g1TS1.val(13))...
             abs((p4g1TS1.val(20)-p4g1TS1.val(19))/p4g1TS1.val(19))];
S5speed = [abs((p2g1TS5.val(8)-p2g1TS5.val(7))/p2g1TS5.val(7)) ...
             abs((p3g1TS5.val(14)-p3g1TS5.val(13))/p3g1TS5.val(13))...
             abs((p4g1TS5.val(20)-p4g1TS5.val(19))/p4g1TS5.val(19))];
S10speed = [abs((p2g1TS10.val(8)-p2g1TS10.val(7))/p2g1TS10.val(7)) ...
             abs((p3g1TS10.val(14)-p3g1TS10.val(13))/p3g1TS10.val(13))...
             abs((p4g1TS10.val(20)-p4g1TS10.val(19))/p4g1TS10.val(19))];

figure(15)
p2speed = [S005speed(1) S01speed(1) S05speed(1) S1speed(1) S5speed(1) S10speed(1)];
plot(logScales, p2speed);
hold on;
p3speed = [S005speed(2) S01speed(2) S05speed(2) S1speed(2) S5speed(2) S10speed(2)];
plot(logScales, p3speed);
hold on;
p4speed = [S005speed(3) S01speed(3) S05speed(3) S1speed(3) S5speed(3) S10speed(3)];
plot(logScales, p4speed);
hold off;

title('Speaker Learning Speed by (log) \alpha')
xlabel('\alpha');
ylabel('Percent Change between first two trials');
legend({'Partner 2', 'Partner 3', 'Partner 4'});
set(gca,'XLim',[-3.2 2.5],'YLim',[0 1])
xticks(logScales)
xticklabels({'0.05', '0.1', '0.5', '1', '5', '10'});

%% Table: Speaker Confidence and Speed across scales
Sconfvalues = [mean(abs(0.5-S005finavg)) mean(abs(0.5-S01finavg)) mean(abs(0.5-S05finavg)) mean(abs(0.5-S1finavg)) mean(abs(0.5-S5finavg)) mean(abs(0.5-S10finavg))];
Sspeedvalues = [mean(S005speed) mean(S01speed) mean(S05speed) mean(S1speed) mean(S5speed) mean(S10speed)];

