% Prob1 Task a
x = [1, 2, 3, 4, 5, 6, 7, 8]; 
X_fft = fft(x); % FFT of the sequence
disp('FFT of the sequence:');
disp(X_fft);

% Task b
x_ifft = ifft(X_fft); % Inverse FFT of the sequence
disp('Inverse FFT of the sequence:');
disp(x_ifft);

% Calculate the DFT using the custom function
X_dft = dft(x);
disp('DFT of the sequence using custom function:');
disp(X_dft);

% Calculate the inverse DFT using the custom function
x_idft = idft(X_dft);
disp('Inverse DFT of the sequence using custom function:');
disp(x_idft);

% To ensure the output of the inverse DFT is real
x_idft = real(x_idft);
disp('Real part of the inverse DFT:');
disp(x_idft);

% Start of the second section %%
% Parameters
fs = 8000; % Sampling frequency
t = 0:1/fs:1-1/fs; % Time vector from 0 to 1 second
f1 = 697; % Frequency of the first tone
f2 = 1209; % Frequency of the second tone

% Signal
y = sin(2*pi*f1*t) + sin(2*pi*f2*t); % Sum of two sine waves

% Prob 2 (a) Plot the signal
figure;
plot(t, y);
title('Time domain signal y(t)');
xlabel('Time (seconds)');
ylabel('Amplitude');
xlim([0 0.01]); 

% (b) Plot the frequency spectrum using a simple periodogram
N = length(y); % Number of data points
Y_fft = fft(y); % Compute the FFT of the signal
Pyy = Y_fft .* conj(Y_fft) / N; % Periodogram

f = fs/2*linspace(0,1,N/2+1); % Frequency vector for plotting
Pyy = Pyy(1:N/2+1); % Take the first half of the periodogram values

% Plot the periodogram
figure;
plot(f, 10*log10(Pyy));
title('Frequency spectrum of y(t)');
xlabel('Frequency (Hz)');
ylabel('Power/Frequency (dB/Hz)');
grid on;

% (c) 
% sptool

% (d) Plot the frequency spectrum using FFT
plot(f, abs(Y_fft(1:N/2+1)));
title('Frequency spectrum of y(t) using FFT');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;

% Function definitions must be at the end of the script file
% Define the DFT function
function X = dft(x)
    N = length(x);
    n = 0:N-1;
    k = n';
    W = exp(-2j * pi / N .* (k * n));
    X = W * x.';
end

% Define the inverse DFT function
function x = idft(X)
    N = length(X);
    n = 0:N-1;
    k = n';
    W = exp(2j * pi / N .* (n * k));
    x = (1/N) * (W * X.');
end
