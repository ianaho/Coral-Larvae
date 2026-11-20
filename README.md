# Coral larval swimming trajectories

Horizontal and vertical positions of individual *Acropora millepora* larvae recorded by vertical tracking microscopy from 0 to 9 days post-fertilization (dpf).

## Data format

`trajectories_by_dpf_raw.mat` contains one MATLAB structure per developmental day, named `dpf0` through `dpf9`. Each structure contains tracks named `trial1`, `trial2`, and so on. Trial numbers restart each day and identify tracks only within that day.

| Field | Description | Unit |
| --- | --- | --- |
| `x` | Horizontal position | mm |
| `z` | Vertical position, positive upward | mm |
| `t` | Recorded time | s |

Each trial contains three column vectors of equal length. The export preserves the positions and timestamps from the original tracking files, so the number of samples can differ between trials.

## Load and plot one track in MATLAB

This example plots the first track at 3 dpf relative to its starting position.

```matlab
data = load('trajectories_by_dpf_raw.mat', 'dpf3');
track = data.dpf3.trial1;

plot(track.x - track.x(1), track.z - track.z(1))
axis equal
xlabel('Horizontal displacement (mm)')
ylabel('Vertical displacement (mm)')
```

## Citation

If you use these trajectories, please cite the accompanying manuscript:

Ian Ho, Qing Zhang, Benjamin Foster, Elora H. López-Nandam, Pranav Vyas, Shayle Matsuda, Rebecca Albright, and Manu Prakash. *Behavioral Plasticity and Dispersal of Free Swimming Coral Larvae via Vertical Tracking Microscopy* (2026).

## License

The trajectory data are licensed under CC BY 4.0. Original code in this repository is licensed under the MIT License. See [LICENSE](LICENSE).
