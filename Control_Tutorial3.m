clc, clearvars


%%Step Response Analysis
%Step Response


s = tf('s');
%s = tf('s'); allows you to enter the transfer function in the next line 
%in symbolic form rather than as numerator and denominator vectors.
G3 = 1/(s^2 + 1.2*s + 1) %2nd-order system
step(G3); %Plot step response
grid on;
title('Step Response of G3');
xlabel('Time (s)');
ylabel('Amplitude');

%Step Response Specifications (stepinfo)

info = stepinfo(G3);
disp(info);

%Extract key parameters
fprintf('Rise Time: %.3f s\n', info.RiseTime);
fprintf('Settling Time: %.3f s\n', info.SettlingTime);
fprintf('Overshoot: %.2f%%\n', info.Overshoot);

%Step Response with Time Vector
% t = 0:0.01:20;  %Custom time vector
% step(G3, t);     %Step response over specified time

%%Impulse Response Analysis
%Impulse Response
% impulse(G3);
% grid on;
% title('Impulse Response');


%%Closed-Loop Systems (feedback)
%sys = feedback(sys1,sys2) returns a model object sys for the 
%negative feedback interconnection of model objects sys1,sys2.
G4 = tf([2 3 4 6], [1 8 1 5 10])
H4 = tf([1 1], [1 4 5])
CLTF_sys1 = feedback (G4, H4)

%sys = feedback(___,sign) returns a model object sys for a feedback loop with the type of feedback specified by sign. 
%By default, feedback assumes negative feedback and is equivalent to feedback(sys1,sys2,-1). 
%To compute the closed-loop system with positive feedback, use sign = +1.
CLTF_sys2 = feedback(G4*H4,1)




