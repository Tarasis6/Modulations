clear all

T = 1  ;
Sr = 16;
Fs = 1024;
F0 = 128;
n = 3; 
t = [0:Fs*T-1]'/Fs;
N = Fs*T;
Br = Sr*n;
data = randi(2,T*Sr,n)-1;
IQ_table = [1+0*i, 1/sqrt(2)+1/sqrt(2)*i, 0+1*i, -1/sqrt(2)+1/sqrt(2)*i, -1+0*i, -1/sqrt(2)-1/sqrt(2)*i, 0-1*i, 1/sqrt(2)-1/sqrt(2)*i ];
data = bi2de(data) + 1;
symbol = IQ_table(data);

data = reshape(repmat(symbol,Fs/Sr,1),[],1);
s = real(data).*cos(2*pi*F0*t)-imag(data).*sin(2*pi*F0*t);
I = real(data);
Q = imag(data);
figure
plot(t,s);
figure
ff = [-N/2:N/2-1]*Fs/N;
plot(ff,abs(fftshift(fft(s))))