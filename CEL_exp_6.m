clear all
clc
close all

x = 10:10:80;
y = [25 70 380 550 610 1220 830 1450];
X = [0 2 4 6 9 11 12 15 17 19];
Y = [ 5 6 7 6 9 8 8 10 12 12];
p = polyfit(x,y,1); % for linear regression
% p = polyfit(x,y,2); % for quadratic regression
% p = polyfit(x,y,13); % for cubic regression

scatter (x,y,'r*');
grid on;
xlabel('X-axis'); ylabel('Y-axis');
y1=p(2)+p(1)*x;
hold on;
plot(x,y1,'-b');