
%% 导入数据
clc, clear, close all
% 导入数据
[~, ~, raw] = xlsread('MF52.xls','Sheet1','A2:G102');

% 创建输出变量
data = reshape([raw{:}],size(raw));

% 将导入的数组分配给列变量名称
Date = data(:,1);
DateNum = data(:,2);

Temperature = data(:,1);
R = data(:,2);

% 清除临时变量
 clearvars data raw;

 %% 数据探索
figure % 创建一个新的图像窗口

plot(Temperature,R,'b-*')
axis([0 100,0,29])
hold on

%legend('RollingStone','SpinLight','Epsilon')


%datetick('x','mm');% 更白日期显示类型
xlabel('Temperature'); % x轴说明
ylabel('r(m)'); % y轴说明
grid on
