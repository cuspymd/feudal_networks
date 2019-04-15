# feudal_networks
An implementation of FeUdal Networks for Hierarchical Learning as published : https://arxiv.org/abs/1703.01161

Implementation and training framework derived from the OpenAI starter agent: https://github.com/openai/universe-starter-agent

## How to run
It is not easy to install dependancies.
So I suggest to run it using docker image.
```
sudo docker run -it -v "$(pwd)/log":/tmp cuspymd/feudal-networks
```
### Environment variables
You can pass options into docker image using environment variables

name|option|default
----|------|--------
NUM_WORKERS|-w|1
REMOTES|-r|None
ENV_ID|-e|PongDeterministic-v4
LOG_DIR|-l|/tmp/pong
MODE|-m|child
POLICY|-p|lstm
VISUALIZE|--visualize|false
