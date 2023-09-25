if [ "$1" == "--run_local" ]; then
python3 -m venv venv
source ./venv/bin/activate
pip install -r requirements.txt
uvicorn main:app --reload
fi

if [ "$1" == "--run_docker" ]; then
docker compose up --build --force-recreate fastapi
fi
