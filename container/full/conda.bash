wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p /opt/conda
rm miniconda.sh

export PATH="/opt/conda/bin:$PATH"
conda config --set always_yes yes --set changeps1 no
conda update -q conda

conda create -q -n docker-environment python=3.5 numpy scipy
source activate docker-environment

conda config --add channels ostrokach    # graph-tool
conda config --add channels conda-forge  # rtree, shapely, pyembree
conda config --add channels defaults     # stuff

conda install shapely rtree graph-tool pyembree pip 