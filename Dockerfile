FROM mdzik/tclb_workspace:latest

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}
SHELL ["/bin/bash", "-c"]
ENV SHELL "/bin/bash"

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

COPY --chown=${NB_UID} . ${HOME}
COPY --chown=${NB_UID} .binder/start /start
COPY --chown=${NB_UID} .binder/postBuild /postBuild

RUN chown -R ${NB_UID} ${HOME}

USER root
RUN chmod u+x /start && chmod u+x /postBuild

USER ${NB_USER}    
RUN /postBuild
ENTRYPOINT ["/bin/bash","/start"]