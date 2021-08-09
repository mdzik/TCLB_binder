# TCLB_binder

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/mdzik/TCLB_binder/HEAD)

# Local run

Image is designed to be binder-firendly. For local development, see TCLB_Docker images


# Features

1. Prebuild models and macros to use full featured TCLB from your browser
2. To run model write ([example](https://mybinder.org/v2/gh/mdzik/TCLB_binder/89be6e93fd6b8c733466919ddeb9a011fbcad279))
```python
! tclb d2q9_reaction_diffusion_system_SimpleDiffusion SimpleDiffusion.xml 
```
3. Models included:
 - d2q9_reaction_diffusion_system_SimpleDiffusion
 - d2q9
 - more comming

4. Libraries included
 - TCLB dependincies: R, Python, HDF5
 - Python VTK and HDF5 bindings
 - Matplotlib, Pandas, Numpy and Numba

5. Bundled examples
 - ./example include Notebooks runnable and tested in this Binder
 - ~/TCLB/examples - standard TCLB examples
 - ~/TCLB_tools/Examples_and_papers Real-world cases used to create some of our journal papers

# Performance
Keep in mind that those are free resources :)

For 1000x1000 grid (permorfance is varying, and depend on grid size):

```
[  ]    ---- : Adding HDF5 to the solver hands
[  ]    ---- :     85.5 MLBUps     13.84 GB/s [====================]
[  ]    ---- :      200 it writing hdf5
[  ]    ---- :     89.9 MLBUps     14.56 GB/s [====================]
[  ]    ---- :      400 it writing hdf5
[  ]    ---- :    139.7 MLBUps     22.64 GB/s [====================]
[  ]    ---- :      600 it writing hdf5
[  ]    ---- :     79.4 MLBUps     12.86 GB/s [====================]
[  ]    ---- :      800 it writing hdf5
[  ]    ---- :    148.1 MLBUps     23.99 GB/s [====================]
[  ]    ---- :     1000 it writing hdf5
[  ]    ---- :     86.4 MLBUps     14.00 GB/s [====================]
[  ]    ---- :     1200 it writing hdf5
[  ]    ---- :     76.5 MLBUps     12.39 GB/s [====================]
[  ]    ---- :     1400 it writing hdf5
[  ]    ---- :     77.2 MLBUps     12.51 GB/s [====================]
[  ]    ---- :     1600 it writing hdf5
[  ]    ---- :    102.9 MLBUps     16.66 GB/s [====================]
[  ]    ---- :     1800 it writing hdf5
[  ]    ---- :    138.8 MLBUps     22.48 GB/s [====================]
[  ]    ---- :     2000 it writing hdf5
[  ]    ---- : Total duration: 2.093409 s = 0.034890 min = 0.000582 h
```
