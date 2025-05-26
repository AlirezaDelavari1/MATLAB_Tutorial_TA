clc, clearvars



%%%Transfer Functions in MATLAB
%num, den
num = [1 1];    %Numerator coefficients (s + 1)  
den = [1 4 3];  %Denominator coefficients (s^2 + 4s + 3)  
G1 = tf(num, den)

num = [1 2 3];
den = [1 4 3 5 6]; 
G2 = tf(num, den)

G22 = tf([1 2 3], [1 4 3 5 6])

t3 = tf([2], [1 2 10 2])

%tf('s')
%s = tf('s'); allows you to enter the transfer function in the next line 
%in symbolic form rather than as numerator and denominator vectors.
s = tf('s');
t1 = 10*s / (s^2 + 25*s + 100)


%zpk
t2 = zpk([3 -4], [0, -2 -10 -15], 100)

%zpk to tf
t22 = tf(t2)

%tf to zpk
t33 = zpk(t3)

%find all zeros and all poles
zero(t3)
pole(t3)

zero(t1)
pole(t1)
%plot zeros and poles
%pzmap(t3)
pzmap(t1)