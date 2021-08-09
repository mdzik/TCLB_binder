FROM mdzik/tclb_buildkit:latest

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}
SHELL ["/bin/bash", "-c"]
ENV SHELL "/bin/bash"


RUN apt-get install -y  curl && apt-get clean
RUN curl -sL https://deb.nodesource.com/setup_12.x |  bash -

RUN apt-get -y update && apt-get install -y  pip nodejs && apt-get clean
RUN pip install --no-cache-dir numpy sympy pandas matplotlib h5py jupyterlab itkwidgets vtk lxml numba display_xml



RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager jupyter-matplotlib jupyterlab-datawidgets 


RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

# Make sure the contents of our repo are in ${HOME}
COPY --chown=${NB_UID} . ${HOME}
COPY --chown=${NB_UID} .binder/start /start
COPY --chown=${NB_UID} .binder/postBuild /postBuild



#RUN chown -R ${NB_UID} ${HOME}

#RUN cp ${HOME}/binder/start /start
#RUN cp ${HOME}/binder/.bashrc ${HOME}/.bashrc

#RUN chown  ${NB_UID} /start

USER root
RUN chmod +x /start && chmod +x /postBuild

USER ${NB_USER}    
RUN /postBuild
ENTRYPOINT ["/bin/bash","/start"]