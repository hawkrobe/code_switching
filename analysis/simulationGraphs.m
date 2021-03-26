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

trials = 1:24;

%% All trials - partner likelihood of being in each group over time

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

title('Probability of being in Group 1 (Scale = 0.05)');
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

title('Probability of being in Group 1 (Scale = 0.1)');
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
p4TL05 = TL1(p4ID,:);
p4g1ID = p4TL05.partner == 'group1';
p4g1TL05 = p4TL05(p4g1ID,:);
plot(p4g1TL05.trialNum, p4g1TL05.val);
hold off;

title('Probability of being in Group 1 (Scale = 0.5)');
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

title('Probability of being in Group 1 (Scale = 1)');
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

title('Probability of being in Group 1 (Scale = 5)');
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

title('Probability of being in Group 1 (Scale = 10)');
xlabel('Trial Number');
ylabel('P(Group 1)');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
yline(0.5, ':', '0.50');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 1])

%% Listener confidence over time

% Scaling parameter = 0.05 ---------------------------------------------

figure(7)
p2L005conf = abs(p2g1TL005.val - (1-p2g1TL005.val))/0.5*100;
p3L005conf = abs(p3g1TL005.val - (1-p3g1TL005.val))/0.5*100;
p4L005conf = abs(p4g1TL005.val - (1-p4g1TL005.val))/0.5*100;
plot(trials, p2L005conf)
hold on
plot(trials, p3L005conf)
hold on
plot(trials, p4L005conf)
hold off

title('Listener Confidence Over Time (Scale = 0.05)');
xlabel('Trial Number');
ylabel('Percent Difference between Group Assignments');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 200])

% Scaling parameter = 0.1 ---------------------------------------------

figure(8)
p2L01conf = abs(p2g1TL01.val - (1-p2g1TL01.val))/0.5*100;
p3L01conf = abs(p3g1TL01.val - (1-p3g1TL01.val))/0.5*100;
p4L01conf = abs(p4g1TL01.val - (1-p4g1TL01.val))/0.5*100;
plot(trials, p2L01conf)
hold on
plot(trials, p3L01conf)
hold on
plot(trials, p4L01conf)
hold off

title('Listener Confidence Over Time (Scale = 0.1)');
xlabel('Trial Number');
ylabel('Percent Difference between Group Assignments');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 200])

% Scaling parameter = 0.5 ---------------------------------------------

figure(9)
p2L05conf = abs(p2g1TL05.val - (1-p2g1TL05.val))/0.5*100;
p3L05conf = abs(p3g1TL05.val - (1-p3g1TL05.val))/0.5*100;
p4L05conf = abs(p4g1TL05.val - (1-p4g1TL05.val))/0.5*100;
plot(trials, p2L05conf)
hold on
plot(trials, p3L05conf)
hold on
plot(trials, p4L05conf)
hold off

title('Listener Confidence Over Time (Scale = 0.5)');
xlabel('Trial Number');
ylabel('Percent Difference between Group Assignments');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 200])

% Scaling parameter = 1 ---------------------------------------------

figure(10)
p2L1conf = abs(p2g1TL1.val - (1-p2g1TL1.val))/0.5*100;
p3L1conf = abs(p3g1TL1.val - (1-p3g1TL1.val))/0.5*100;
p4L1conf = abs(p4g1TL1.val - (1-p4g1TL1.val))/0.5*100;
plot(trials, p2L1conf)
hold on
plot(trials, p3L1conf)
hold on
plot(trials, p4L1conf)
hold off

title('Listener Confidence Over Time (Scale = 1)');
xlabel('Trial Number');
ylabel('Percent Difference between Group Assignments');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 200])

% Scaling parameter = 5 ---------------------------------------------

figure(11)
p2L5conf = abs(p2g1TL5.val - (1-p2g1TL5.val))/0.5*100;
p3L5conf = abs(p3g1TL5.val - (1-p3g1TL5.val))/0.5*100;
p4L5conf = abs(p4g1TL5.val - (1-p4g1TL5.val))/0.5*100;
plot(trials, p2L5conf)
hold on
plot(trials, p3L5conf)
hold on
plot(trials, p4L5conf)
hold off

title('Listener Confidence Over Time (Scale = 5)');
xlabel('Trial Number');
ylabel('Percent Difference between Group Assignments');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 200])

% Scaling parameter = 10 ---------------------------------------------

figure(12)
p2L10conf = abs(p2g1TL10.val - (1-p2g1TL10.val))/0.5*100;
p3L10conf = abs(p3g1TL10.val - (1-p3g1TL10.val))/0.5*100;
p4L10conf = abs(p4g1TL10.val - (1-p4g1TL10.val))/0.5*100;
plot(trials, p2L10conf)
hold on
plot(trials, p3L10conf)
hold on
plot(trials, p4L10conf)
hold off

title('Listener Confidence Over Time (Scale = 10)');
xlabel('Trial Number');
ylabel('Percent Difference between Group Assignments');
xline(7, ':', 'Partner 2 Start');
xline(13, ':', 'Partner 3 Start');
xline(19, ':', 'Partner 4 Start');
legend({'Partner 2', 'Partner 3', 'Partner 4'},'Location','northwest')
set(gca,'XLim',[0 25],'YLim',[0 200])

%% Final listener confidence by scaling parameter

% Average of final 5 trials (20-24) --------------------------------------

partners = [2 3 4];

L005finavg = [mean(p2L005conf(20:24)) mean(p3L005conf(20:24)) mean(p4L005conf(20:24))];
L01finavg = [mean(p2L01conf(20:24)) mean(p3L01conf(20:24)) mean(p4L01conf(20:24))];
L05finavg = [mean(p2L05conf(20:24)) mean(p3L05conf(20:24)) mean(p4L05conf(20:24))];
L1finavg = [mean(p2L1conf(20:24)) mean(p3L1conf(20:24)) mean(p4L1conf(20:24))];
L5finavg = [mean(p2L5conf(20:24)) mean(p3L5conf(20:24)) mean(p4L5conf(20:24))];
L10finavg = [mean(p2L10conf(20:24)) mean(p3L10conf(20:24)) mean(p4L10conf(20:24))];

figure(13)
plot(partners, L005finavg);
hold on;
plot(partners, L01finavg);
hold on;
plot(partners, L05finavg);
hold on;
plot(partners, L1finavg);
hold on;
plot(partners, L5finavg);
hold on;
plot(partners, L10finavg);
hold off;

title('Average Final Listener Confidence by Scale')
xlabel('Partner Number');
ylabel('Percent Difference between Group Assignments');
legend({'0.05', '0.1', '0.5', '1', '5', '10'})
set(gca,'XLim',[2 4],'YLim',[0 200])
xticks(2:4)

% Only the final trial

L005final = [p2L005conf(24) p3L005conf(24) p4L005conf(24)];
L01final = [p2L01conf(24) p3L01conf(24) p4L01conf(24)];
L05final = [p2L05conf(24) p3L05conf(24) p4L05conf(24)];
L1final = [p2L1conf(24) p3L1conf(24) p4L1conf(24)];
L5final = [p2L5conf(24) p3L5conf(24) p4L5conf(24)];
L10final = [p2L10conf(24) p3L10conf(24) p4L10conf(24)];

figure(14)
plot(partners, L005final);
hold on;
plot(partners, L01final);
hold on;
plot(partners, L05final);
hold on;
plot(partners, L1final);
hold on;
plot(partners, L5final);
hold on;
plot(partners, L10final);
hold off;

title('Final Listener Confidence by Scale')
xlabel('Partner Number');
ylabel('Percent Difference between Group Assignments');
legend({'0.05', '0.1', '0.5', '1', '5', '10'})
set(gca,'XLim',[2 4],'YLim',[0 200])
xticks(2:4)

%% Listener learning speed by scaling parameter

%0.05
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
plot(partners, L005speed);
hold on;
plot(partners, L01speed);
hold on;
plot(partners, L05speed);
hold on;
plot(partners, L1speed);
hold on;
plot(partners, L5speed);
hold on;
plot(partners, L10speed);
hold off;

title('Listener Speed by Scale')
xlabel('Partner Number');
ylabel('Percent Difference between Group Assignments');
legend({'0.05', '0.1', '0.5', '1', '5', '10'})
set(gca,'XLim',[2 4],'YLim',[0 1.8])
xticks(2:4)
