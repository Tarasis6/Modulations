close all 
clear all

Fs=1024;
N=1024;
t = [0:N-1]/Fs;
F0 = 128;
f = 8;

ff = [-N/2:N/2-1]*Fs/N;
ff = ff(N/2+1:N);

mi=0.5;

s = sin(2*pi*f*t);
S = sin(2*pi*F0*t);

am = (1+mi*sin(2*pi*f*t)).*sin(2*pi*F0*t);
SAM = abs(fftshift(fft(am)));

SAM = SAM(N/2+1:N);

figure
plot(t,s,'r');
hold on
plot(t,am);
hold off

figure
plot(ff,SAM, 'b');
