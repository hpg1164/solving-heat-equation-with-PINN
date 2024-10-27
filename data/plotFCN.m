% Load the data from each .txt file
data1 = readmatrix('4x50FCN.txt');
data2 = readmatrix('5x100FCN.txt');
data3 = readmatrix('6x200FCN.txt');

% Assuming each file has two columns: Iteration and Loss
It1 = data1(:, 1);  % First column is Iteration for file 1
loss1 = data1(:, 2);  % Second column is Loss for file 1

It2 = data2(:, 1);  % First column is Iteration for file 2
loss2 = data2(:, 2);  % Second column is Loss for file 2

It3 = data3(:, 1);  % First column is Iteration for file 3
loss3 = data3(:, 2);  % Second column is Loss for file 3

% Plot Loss vs Iteration for all three files
figure;
plot(It1, loss1, 'b', 'DisplayName', 'File 1 Loss');  % 'b' for blue
hold on;
plot(It2, loss2, 'g', 'DisplayName', 'File 2 Loss');  % 'g' for green
plot(It3, loss3, 'r', 'DisplayName', 'File 3 Loss');  % 'r' for red
hold off;

% Add labels and title
xlabel('Iteration');
ylabel('Loss');
title('Losses from Three Files Over Iterations');

% Add a legend to differentiate between the plots
legend show;
disp(It1);
disp(loss1);

disp(It2);
disp(loss2);

disp(It3);
disp(loss3);

