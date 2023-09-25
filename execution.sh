display_help() {
    echo "Usage: bash execution.sh [options]"
    echo "Options:"
    echo "  -h, --help -> Display this help message"
    echo "  --run_local -> Run the app locally in port 8000"
    echo "  --docker -> Build and execute the Docker container with the app in port 80"
}
# Check if the user specified the help option
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    display_help
    exit 0
fi

if [ "$1" == "--run_local" ]; then
python3 -m venv venv
source ./venv/bin/activate
pip install -r requirements.txt
uvicorn main:app --reload
fi

if [ "$1" == "--run_docker" ]; then
docker compose up --build --force-recreate fastapi
fi
