% Part 1: Created the weather.data.text with a weather file
fileID = fopen('weather_data.txt', 'w');
fprintf(fileID, 'Date,Temperature,Humidity,Precipitation\n');
fprintf(fileID, '2024-09-01,25.5,60,0\n');
fprintf(fileID, '2024-09-02,26.0,65,5\n');
fprintf(fileID, '2024-09-03,24.5,70,10\n');
fprintf(fileID, '2024-09-04,23.0,75,15\n');
fprintf(fileID, '2024-09-05,22.5,80,20\n');
fclose(fileID);

% Part 2: Read data extracted from weather_data.text
data = readcell('weather_data.txt', 'Delimiter', ',');

% Extracted the numerical data for weather
temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));

% Computed the average temp., humidity, and precipitation
avg_temperature = mean(temperature);
avg_humidity = mean(humidity);
total_precipitation = sum(precipitation);

% Showed the results
fprintf('Average Temperature: %.2f°C\n', avg_temperature);
fprintf('Average Humidity: %.2f%%\n', avg_humidity);
fprintf('Total Precipitation: %.2f mm\n', total_precipitation);

% Part C: Wrote the stats to weather_summary.text
summaryID = fopen('weather_summary.txt', 'w');
fprintf(summaryID, 'Weather Summary (September 2024)\n');
fprintf(summaryID, '-------------------------------\n');
fprintf(summaryID, 'Average Temperature: %.2f°C\n', avg_temperature);
fprintf(summaryID, 'Average Humidity: %.2f%%\n', avg_humidity);
fprintf(summaryID, 'Total Precipitation: %.2f mm\n', total_precipitation);
fclose(summaryID);
