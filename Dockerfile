FROM rasa/duckling

EXPOSE 8000

CMD ["duckling-example-exe", "--port", "8000", "--no-access-log"]
