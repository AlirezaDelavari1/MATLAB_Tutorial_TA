clc, clearvars


%Laplace Transform
syms t s  
f = 5*exp(-3*t) + 2*sin(4*t);  
F = laplace(f)  
pretty(F)


F = (s + 1)/(s^2 + 3*s + 2);

disp(F)

%pretty
pretty(F)

%LaTeX Format
latex_str = latex(F);
disp(latex_str)



%Inverse Laplace Transform
F = 1/(s^2 + 5*s + 6);  
f = ilaplace(F)
disp(f)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



