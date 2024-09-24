pip uninstall torch torch-xla -y

# Install PyTorch and PyTorch XLA.
export DATE="20240828"
export TORCH_VERSION="2.5.0"
pip install https://storage.googleapis.com/pytorch-xla-releases/wheels/tpuvm/torch-${TORCH_VERSION}.dev${DATE}-cp310-cp310-linux_x86_64.whl
pip install https://storage.googleapis.com/pytorch-xla-releases/wheels/tpuvm/torch_xla-${TORCH_VERSION}.dev${DATE}-cp310-cp310-linux_x86_64.whl

# Install JAX and Pallas.
pip install torch_xla[tpu] -f https://storage.googleapis.com/libtpu-releases/index.html
pip install torch_xla[pallas] -f https://storage.googleapis.com/jax-releases/jax_nightly_releases.html -f https://storage.googleapis.com/jax-releases/jaxlib_nightly_releases.html

# Install other build dependencies.
