close all 
clear all

Fs = 4000e3;
N = 1024;
t = [0:N-1]/Fs;
F0 = 150e3;
f = 4e3;

ff = [-N/2:N/2-1]*Fs/N;
ff = ff(N/2+1:N);

fi = pi/4;
m = 6;

s = sin(2*pi*f*t);
S = sin(2*pi*F0*t);

PM = sin(2*pi*F0*t+fi*sin(2*pi*f*t));
FM = sin(2*pi*F0*t+m*sin(2*pi*f*t));

SPM = abs(fftshift(fft(PM)));
SFM = abs(fftshift(fft(FM)));

SPM = SPM(N/2+1:N);
SFM = SFM(N/2+1:N);

figure
plot(t,s,'r');
hold on
plot(t,PM)
plot(t,FM,  'g')
hold off

% figure
% plot(ff,SPM, 'm')
% hold on
% plot(ff, SFM, 'y')
% hold off
