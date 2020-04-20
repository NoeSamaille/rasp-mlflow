FROM python:3.6

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir install-files/numpy-1.18.2-cp36-cp36m-linux_armv7l.whl && \
	pip install --no-cache-dir install-files/pandas-1.0.3-cp36-cp36m-linux_armv7l.whl && \
	pip install --no-cache-dir install-files/PyNaCl-1.3.0-cp36-cp36m-linux_armv7l.whl && \
	pip install --no-cache-dir install-files/cryptography-2.9-cp36-cp36m-linux_armv7l.whl && \
	pip install --no-cache-dir -r requirements.txt

