% Prob 3.1
load('ecg.mat'); 
x_n = ECG_Data; 

% Plot x(n)
figure;
plot(x_n);
title('Original ECG Signal x(n)');
xlabel('Sample Number');
ylabel('Amplitude');
axis([0 2000 100 220]); 

% Prob 3.2: Create output y(n) using a for loop
y_n = zeros(1, length(x_n)); % Initialize y(n) with zeros
for n = 1:(length(x_n)-2)
    y_n(n) = (x_n(n) + x_n(n + 1) + x_n(n + 2)) / 3;
end

% Prob 3.3: Plot both x(n) and y(n) using subplot
figure;
subplot(2, 1, 1); 
plot(x_n);
title('Original ECG Signal x(n)');
xlabel('Sample Number');
ylabel('Amplitude');
axis([0 2000 100 220]); 

subplot(2, 1, 2);
plot(y_n);
title('Processed ECG Signal y(n)');
xlabel('Sample Number');
ylabel('Amplitude');
axis([0 2000 100 220]); % Set the axis limits as specified
