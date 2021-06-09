# B-Pref: Benchmark for Preference-based RL

Official codebase for [PEBBLE: Feedback-Efficient Interactive Reinforcement Learning via Relabeling Experience and Unsupervised Pre-training](https://arxiv.org/abs/xxxx). Contains scripts to reproduce experiments.

Benchmarking results with more interesting components (e.g., various simulated teachers, sampling schemes, feedback schedule) will be added soon. Please stay tuned!


## Install

```
conda env create -f conda_env.yml
pip install -e .[docs,tests,extra]
cd custom_dmcontrol
pip install -e .
cd custom_dmc2gym
pip install -e .
pip install git+https://github.com/rlworkgroup/metaworld.git@master#egg=metaworld
pip install pybullet
```

## Run experiments

### PEBBLE

Experiments can be reproduced with the following:

```
./scripts/[env_name]/[max_budget]/run_PEBBLE.sh [sampling_scheme: 0=uniform, 1=disagreement, 2=entropy]
```

### SAC with true reward

Experiments can be reproduced with the following:

```
./scripts/[env_name]/run_sac.sh 
```