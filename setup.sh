#!/bin/bash
echo "Setting up CRISPR Guide Design environment..."

# Install mamba if not available
conda install -y -n base -c conda-forge mamba

# Create environment
mamba env create -f environment.yml

# Activate and register Jupyter kernel
source /opt/conda/etc/profile.d/conda.sh
conda activate guide-design
python -m ipykernel install --user --name guide-design --display-name "guide-design"

echo ""
echo "✅ Setup complete!"
echo "To activate: source /opt/conda/etc/profile.d/conda.sh && conda activate guide-design"