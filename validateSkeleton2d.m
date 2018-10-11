%% README
% Make sure to put the image sequence and the tracking data in the same
% folder with this matlab file.
% Define the fame number that you want to validate


%% MAIN FUNCTION
frameNumber = 265; % Change this number to your desire frame number
imageSqPrefix = '01_0_Krai'; % Change this string to your image sequence
trackingData = '01_0_Krai.data'; % Change this string to your tracking data


imageFile = strcat(imageSqPrefix, sprintf('%04d',frameNumber), '.jpg');
I = imread(imageFile);
imshow(I);
[Tracking2D, delimeter] = importdata(trackingData); %2D skeleton data;
skeleton = Tracking2D(frameNumber+1,:);
y = skeleton(1:3:end);
x = skeleton(2:3:end);

%% Plot key_points
hold on

% Draw bones
line([y(1), y(2)], [x(1), x(2)], 'Color', 'b', 'LineWidth', 3); % 0-1
line([y(2), y(3)], [x(2), x(3)], 'Color', [1 0.9 0], 'LineWidth', 3); % 1-2
line([y(3), y(4)], [x(3), x(4)], 'Color', [1 0.8 0], 'LineWidth', 3); % 2-3
line([y(4), y(5)], [x(4), x(5)], 'Color', [1 0.8 0], 'LineWidth', 3); % 3-4
line([y(2), y(6)], [x(2), x(6)], 'Color', [1 0.7 0], 'LineWidth', 3); % 1-5
line([y(6), y(7)], [x(6), x(7)], 'Color', [0.8 1 0], 'LineWidth', 3); % 5-6
line([y(7), y(8)], [x(7), x(8)], 'Color', 'g', 'LineWidth', 3); % 6-7
line([y(2), y(9)], [x(2), x(9)], 'Color', [0 0.8 0.2], 'LineWidth', 3); % 1-8
line([y(9), y(10)], [x(9), x(10)], 'Color', [0 1 0], 'LineWidth', 3); % 8-9
line([y(10), y(11)], [x(10), x(11)], 'Color', [0 1 0.3], 'LineWidth', 3); % 9-10
line([y(2), y(12)], [x(2), x(12)], 'Color', [0 0.8 1], 'LineWidth', 3); % 1-11
line([y(12), y(13)], [x(12), x(13)], 'Color', [0 0.5 1], 'LineWidth', 3); % 11-12
line([y(13), y(14)], [x(13), x(14)], 'Color', [0 0 1], 'LineWidth', 3); % 12-13
line([y(9), y(12)], [x(9), x(12)], 'Color', [0 0 1], 'LineWidth', 3); % 8-11
% Draw Key points
plot(y,x,'r*' )
hold off