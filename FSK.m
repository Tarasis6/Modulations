clear all

fc1=32;
fc2=64;
fp=8;
amp=1;
amp=amp/2;
t=0:0.001:1;
c1=amp.*sin(2*pi*fc1*t);
c2=amp.*sin(2*pi*fc2*t);
m=amp.*square(2*pi*fp*t)+amp;
for i=0:1000
    if m(i+1)==0
        mm(i+1)=c2(i+1);
        else
        mm(i+1)=c1(i+1);
    end
end
figure
plot(t,mm)
figure
plot(abs(fftshift(fft(mm))))