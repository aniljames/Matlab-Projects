[x,fs]=audioread('10 second gaming intro music__ best ever__.mp4');
X=x(:,2);
len=length(X);
t=seconds((0:len-1)/fs);
plot(t,X)
grid on;
xlabel("Time")
ylabel("Amplitude")
title("Plot of Audio in Time Domain")