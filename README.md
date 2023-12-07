# todo
a todo application flask and db dockerfile 

<code>
mkdir templates instance

mv index.html template/
mv tasks.db instance/
</code>

<code>
docker build -t flask-app-image .

docker run -p 5000:5000 flask-app-image

</code>
