clear all;
close all;

TL005 = readtable('meaningTest_Listener0.05.csv');
TL005.partnerID = categorical(TL005.partnerID);
TL005.partner = categorical(TL005.partner);
TL01 = readtable('meaningTest_Listener0.1.csv');
TL01.partnerID = categorical(TL01.partnerID);
TL01.partner = categorical(TL01.partner);
TL05 = readtable('meaningTest_Listener0.5.csv');
TL05.partnerID = categorical(TL05.partnerID);
TL05.partner = categorical(TL05.partner);
TL1 = readtable('meaningTest_Listener1.csv');
TL1.partnerID = categorical(TL1.partnerID);
TL1.partner = categorical(TL1.partner);
TL5 = readtable('meaningTest_Listener5.csv');
TL5.partnerID = categorical(TL5.partnerID);
TL5.partner = categorical(TL5.partner);
TL10 = readtable('meaningTest_Listener10.csv');
TL10.partnerID = categorical(TL10.partnerID);
TL10.partner = categorical(TL10.partner);

%% All trials - partner likelihood of being in each group over time

%% Scaling parameter = 0.05

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

title('Probability of being in Group 1 (Scale = 0.05)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
legend('Partner 2', 'Partner 3', 'Partner 4')

%% Scaling parameter = 0.1

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

title('Probability of being in Group 1 (Scale = 0.1)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
legend('Partner 2', 'Partner 3', 'Partner 4')

%% Scaling parameter = 0.5

%% Scaling parameter = 1

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

title('Probability of being in Group 1 (Scale = 0.05)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
legend('Partner 2', 'Partner 3', 'Partner 4')


% Scaling parameter = 5

% Scaling parameter = 10

%% Listener confidence over time

% Scaling parameter = 0.005

% Scaling parameter = 0.1

% Scaling parameter = 0.05

% Scaling parameter = 1

% Scaling parameter = 5

% Scaling parameter = 10

%% Final listener confidence by scaling parameter

% Average of final 6 trials

% Only the final trial

