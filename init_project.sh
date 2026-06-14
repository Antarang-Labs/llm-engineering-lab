#!/bin/bash

set -e

echo "======================================"
echo "Initializing LLM Engineering Lab"
echo "======================================"

# ---------- Folder Structure ----------
echo "Creating folders..."

mkdir -p \
docs \
experiments \
assets \
scripts \
weeks/week-01-foundations \
weeks/week-02-prompt-engineering \
weeks/week-03-rag \
weeks/week-04-agents \
weeks/week-05-fine-tuning \
weeks/week-06-lora \
weeks/week-07-deployment \
weeks/week-08-capstone

# ---------- Documentation ----------
echo "Creating documentation..."

cat > docs/learning-journal.md <<EOF
# Learning Journal

Track weekly learnings, insights, challenges, and ideas.

EOF

cat > docs/resources.md <<EOF
# Resources

Useful references from the course and experiments.

EOF

# ---------- Weekly Templates ----------
for week in \
week-01-foundations \
week-02-prompt-engineering \
week-03-rag \
week-04-agents \
week-05-fine-tuning \
week-06-lora \
week-07-deployment \
week-08-capstone
do
cat > weeks/$week/README.md <<EOF
# ${week//-/ }

## Topics Covered

-

## Projects

- [ ] Exercise 1
- [ ] Exercise 2
- [ ] Mini Project

## Learnings

## Challenges

## Improvements

EOF
done

# ---------- Root Files ----------
cat > requirements.txt <<EOF
jupyter
notebook
ipykernel
openai
ollama
langchain
langchain-community
langchain-openai
langchain-ollama
faiss-cpu
sentence-transformers
transformers
accelerate
datasets
chromadb
tiktoken
pandas
numpy
matplotlib
streamlit
fastapi
uvicorn
python-dotenv
EOF

cat > CONTRIBUTING.md <<EOF
# Contributing

- Use descriptive commit messages.
- Document experiments.
- Update READMEs as needed.
EOF

cat > CODE_OF_CONDUCT.md <<EOF
# Code of Conduct

Please be respectful and constructive.

EOF

# ---------- Virtual Environment ----------
echo "Creating Python virtual environment..."

python3 -m venv .venv

source .venv/bin/activate

python -m pip install --upgrade pip

echo "Installing starter packages..."
pip install -r requirements.txt

# ---------- Makefile ----------
cat > Makefile <<EOF
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
EOF

# ---------- README Progress Section ----------
echo ""
echo "Project bootstrap complete."
echo ""
echo "Next:"
echo "source .venv/bin/activate"
echo "git add ."
echo "git commit -m \"Professional repository bootstrap\""
echo "git push"
