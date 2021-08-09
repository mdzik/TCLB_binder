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
