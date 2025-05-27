clc, clearvars


%%Nyquist Plot

%Basic example
sys = tf(1, [1 1]);
nyquist(sys)
grid on
title('Nyquist Plot: Stable System (1/(s+1))')

%Showing GM and PM on Nyquist plot
num = [1 0.1 0.2];
den = [1 5 0.1];
sys = tf(num, den)
figure(1)
nyquist(sys)
figure(2)
margin(sys)

%Showing GM and PM on Nyquist plot
num=[1 30];
den=[1 12 20 15];
sys=tf(num, den)
figure(1)
margin(sys)
figure(2)
nyquist(sys)
stable = isstable(sys)

%Showing multiple Nyquist plots in one figure
num1 = [1 2];
den1 = [1 2 3];
num2 = [1 7];
den2 = [1 5 9];
sys1 = tf(num1, den1)
sys2 = tf(num2, den2)
sys3 = tf(num1, den2)
nyquist(sys1,'r', sys2, 'Bx', sys3, 'g--' )
grid on



%%Nichols Chart

%Basic example
sys = tf(1, conv([1 0], [1 1]))
nichols(sys)
grid on
title('Nichols Chart: Integrator System (1/(s(s+1)))')

%Showing multiple Nichols charts in one figure
num1 = [1 2];
den1 = [1 2 3];
num2 = [1 7];
den2 = [1 5 9];
sys1 = tf(num1, den1)
sys2 = tf(num2, den2)
sys3 = tf(num1, den2)
nichols(sys1,'r', sys2, 'Bx', sys3, 'g--' )
grid on




