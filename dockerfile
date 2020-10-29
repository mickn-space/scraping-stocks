FROM julia:latest

RUN julia -e 'using Pkg; Pkg.add("PyCall")'
RUN julia -e 'ENV["PYTHON"]="/root/.julia/conda/3/bin/python"'
ENV PATH="/root/.julia/conda/3/bin:$PATH:${PATH}"

