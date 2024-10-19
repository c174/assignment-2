% Part 1: Defined the solar system data, pluto was planet until 2007
planet_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto'};
planet_distances = [0.39, 0.72, 1.0, 1.52, 5.2, 9.58, 19.22, 30.05, 39.48]; % Distances in AU
planet_sizes = [0.38, 0.95, 1.0, 0.53, 11.21, 9.45, 4.01, 3.88, 0.19]; % Relative sizes with Earth = 1

% Part 2: Defined the colors of each planet, I liked pluto as a child
colors = [
    [0.8, 0.8, 0.8];   % Mercury - Gray
    [1.0, 0.9, 0.4];   % Venus - Yellowish
    [0.2, 0.6, 1.0];   % Earth - Blue
    [1.0, 0.4, 0.4];   % Mars - Red
    [0.9, 0.8, 0.5];   % Jupiter - Beige
    [0.9, 0.7, 0.5];   % Saturn - Light Brown
    [0.5, 0.8, 1.0];   % Uranus - Light Blue
    [0.4, 0.4, 1.0];   % Neptune - Deep Blue
    [0.7, 0.5, 0.9]    % Pluto - Purple
];

% Part 3: Created a figure with subplots
figure('Position', [100, 100, 1200, 500]); % Adjusted size for better layout

% Subplot 1: Scatter plot of planet sizes and distances
subplot(1, 2, 1); % 1 row, 2 columns, 1st subplot
scatter(planet_distances, planet_sizes, planet_sizes * 100, colors, 'filled'); % Marker size reflects planet sizes
title('Planet Distances vs. Sizes');
xlabel('Distance from Sun (AU)');
ylabel('Relative Planet Size (Earth = 1)');
grid on;
axis([0, 45, 0, 12]); % Adjust axis for better viewing

% Added labels to each point
for i = 1:length(planet_names)
    text(planet_distances(i), planet_sizes(i), [' ' planet_names{i}], ...
        'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right', 'FontSize', 9);
end

% Subplot 2: Bar chart of distances for planets
subplot(1, 2, 2); % 1 row, 2 columns, 2nd subplot
bar(planet_distances, 'FaceColor', [0.2 0.6 0.8], 'EdgeColor', 'k', 'LineWidth', 1.2);
title('Planet Distances from the Sun');
xlabel('Planets');
ylabel('Distance (AU)');
xticks(1:length(planet_names));
xticklabels(planet_names);
xtickangle(45); % Rotate labels for better readability
colormap(colors); % Apply custom colors to the bars
grid on;

% Part D: Saved the file as a png
saveas(gcf, 'solar_system_visualization.png');
