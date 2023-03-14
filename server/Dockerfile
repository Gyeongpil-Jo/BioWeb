FROM continuumio/miniconda3

# Set working directory for the project
WORKDIR /code

SHELL ["/bin/bash", "--login", "-c"]

# Create Conda environment from the YAML file
COPY environment.yml .
RUN conda env create -f environment.yml

COPY --chmod=755 './run.sh' '/run/entrypoint.sh'

ENTRYPOINT ["/bin/bash", "-c", "/run/entrypoint.sh"]
