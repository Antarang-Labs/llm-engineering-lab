setup:
\tpython -m pip install --upgrade pip
\tpip install -r requirements.txt

jupyter:
\tjupyter notebook

freeze:
\tpip freeze > requirements.lock

format:
\t@echo "Add formatter later"

run:
\t@echo "Specify app to run"
