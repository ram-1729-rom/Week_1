[s, Fs] = audioread('speech.wav');

alpha = 1.5; 
F = 250 * alpha;

n = 0:length(s) - 1;
yn = s .* cos(2 * pi * F / Fs * n');

t = (0:length(s) - 1) / Fs;
subplot(2, 1, 1);
plot(t, s);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Speech Signal');
grid on;

subplot(2, 1, 2);
plot(t, yn);
xlabel('Time (s)');
ylabel('Amplitude'); 
title(['Modulated Speech Signal (F = ' num2str(F) ' Hz)']);
grid on;

sound(s, Fs); 
pause(length(s) / Fs); 
sound(yn, Fs); 

Yf = fft(yn);
Sf = fft(s);

frequencies = linspace(0, Fs, length(Yf));
figure;
subplot(2, 1, 1);
plot(frequencies, abs(Sf));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Spectrum of Original Speech Signal');
grid on;

subplot(2, 1, 2);
plot(frequencies, abs(Yf));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title(['Spectrum of Modulated Speech Signal (F = ' num2str(F) ' Hz)']);
grid on;