FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime
COPY . .
RUN pip3  install -r requirements.txt
ENV model_path="THUDM/chatglm-6b"

EXPOSE 7860

CMD [ "python3","web_demo.py" ]