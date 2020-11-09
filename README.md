# Twitch Stream Discord Announcer
## Getting Started
1. Go to the AWS website and download https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
2. Place it in `dev-env/`
3. Run `launch_devenv.sh` to build and launch the development enviornmant container.
4. (Optional) Create and attach to a virtual environment in the container.
5. Exec `python3 -m pip install -r requirements.txt` in the container to deploy the required libraries.
6. Attach to the container `aws_dev_env` within Visual Studio Code using the Docker remote to access the space.
