if [ "$1" == "--run" ]; then
source ./venv/bin/activate
pip install -r requirements.txt
uvicorn main:app --reload
fi