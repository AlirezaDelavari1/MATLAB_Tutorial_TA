clc, clearvars

s = tf('s');
P = (s+1)/(s^3 + 10*s^2 + 28*s + 28)

step(P)

pidTuner(P)

CLTF1 = feedback(P*C, 1)
step(CLTF1)