% Plot each larval track relative to its first recorded position.
data = load(fullfile(fileparts(mfilename('fullpath')), 'trajectories_by_dpf_raw.mat'));
figure
layout = tiledlayout(2, 5, 'TileSpacing', 'compact');
for day = 0:9
    tracks = struct2cell(data.(sprintf('dpf%d', day)));
    nexttile
    hold on
    for k = 1:numel(tracks)
        track = tracks{k};
        plot(track.x - track.x(1), track.z - track.z(1))
    end
    axis equal
    title(sprintf('%d dpf', day))
end
xlabel(layout, 'Horizontal displacement (mm)')
ylabel(layout, 'Vertical displacement (mm)')
