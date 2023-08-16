a = 1 + mod(580, 3);
num_samples = 5000;
f1 = 200 * a; 
f2 = 220 * a; 
fs = 44100;
T = 5;
t = (0:num_samples-1) / fs; 

s1 = sin(2 * pi * a * f1 * t); 
s2 = sin(2 * pi * a * f2 * t);

s = s1 + s2; 
n = 0:length(s) - 1;


audiowrite('sound.wav', s, fs);


plot(n, s);
xlabel('Sample Index');
ylabel('Amplitude');
title('Concatenated Sinusoidal Signal');