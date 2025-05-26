clc, clearvars

%%Bode Plot

%Transfer function
num = 1;
den = [1, 0.5, 1];
sys = tf(num, den);

%Plot Bode diagram
bode(sys)
grid on
title('Bode Plot of G(s) = 1/(s^2 + 0.5s + 1)')

%Higher-Order System
% num = 10*[1 1];
% den = conv([1 2], [1 5]);
% sys = tf(num, den);
% 
% bode(sys)
% grid on
% title('Bode Plot of G(s) = 10(s+1)/((s+2)(s+5))')


%%Gain Margin and Phase Margin

%Stable System
% sys = tf(1, [1 1 1]);
% margin(sys)
% grid on
% stable = isstable(sys)

%Unstable System
% sys = tf(10, conv([1 0], conv([1 1], [1 2])));
% margin(sys)
% grid on
% stable = isstable(sys)

%Margins
% num=[1 30];
% den=[1 12 20 15];
% sys=tf(num, den)
% bode(sys)
% margin(sys)
% [Gm, Pm, fG, fP]=margin(sys)
% 
% GmLog = 20*log10(Gm)



