close all 
clear all

fc=100;
fp=5;
amp=1;
t=0:0.001:1; 
c=amp.*sin(2*pi*fc*t);

m=amp/2.*square(2*pi*fp*t)+(amp/2);
figure
w=c.*m; 
plot(t,w)
figure
plot(abs(fftshift(fft(w))))
