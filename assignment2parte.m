% Part 1: Created 'stock_data.txt' with daily closing prices
fileID = fopen('stock_data.txt', 'w');
% Generated random stock prices between 100 and 200 for 30 days
prices = 100 + (200 - 100) * rand(1, 30);
fprintf(fileID, '%.2f\n', prices);
fclose(fileID);

% Part 2: Read stock data from 'stock_data.txt'
data = readmatrix('stock_data.txt');

% Computed stats
avg_price = mean(data);
max_price = max(data);
min_price = min(data);

% Computed the number of days the stock price increased from day before
price_changes = diff(data);
days_price_increased = sum(price_changes > 0);

% Showed the results
fprintf('Average Closing Price: %.2f\n', avg_price);
fprintf('Highest Closing Price: %.2f\n', max_price);
fprintf('Lowest Closing Price: %.2f\n', min_price);
fprintf('Number of Days with Price Increase: %d\n', days_price_increased);

% Part 3: Created a plot of closing prices
figure;
plot(data, '-o', 'LineWidth', 1.5);
hold on;
yline(avg_price, '--r', 'Average Price', 'LineWidth', 1.2);
yline(max_price, '--g', 'Highest Price', 'LineWidth', 1.2);
yline(min_price, '--b', 'Lowest Price', 'LineWidth', 1.2);
hold off;

% Added labels, title, and legend
xlabel('Day');
ylabel('Closing Price ($)');
title('Daily Stock Prices Analysis');
legend('Daily Prices', 'Average Price', 'Highest Price', 'Lowest Price', 'Location', 'best');
grid on;

% Saved the plot as an png file
saveas(gcf, 'stock_analysis.png');

% Part D: Wrote a summary for the analysis to 'stock_summary.txt'
summaryID = fopen('stock_summary.txt', 'w');
fprintf(summaryID, 'Stock Market Analysis Summary\n');
fprintf(summaryID, '-----------------------------\n');
fprintf(summaryID, 'Average Closing Price: %.2f\n', avg_price);
fprintf(summaryID, 'Highest Closing Price: %.2f\n', max_price);
fprintf(summaryID, 'Lowest Closing Price: %.2f\n', min_price);
fprintf(summaryID, 'Number of Days with Price Increase: %d\n', days_price_increased);
fclose(summaryID);
