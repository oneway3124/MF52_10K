
%% ��������
clc, clear, close all
% ��������
[~, ~, raw] = xlsread('MF52.xls','Sheet1','A2:G102');

% �����������
data = reshape([raw{:}],size(raw));

% ����������������б�������
Date = data(:,1);
DateNum = data(:,2);

Temperature = data(:,1);
R = data(:,2);

% �����ʱ����
 clearvars data raw;

 %% ����̽��
figure % ����һ���µ�ͼ�񴰿�

plot(Temperature,R,'b-*')
axis([0 100,0,29])
hold on

%legend('RollingStone','SpinLight','Epsilon')


%datetick('x','mm');% ����������ʾ����
xlabel('Temperature'); % x��˵��
ylabel('r(m)'); % y��˵��
grid on
