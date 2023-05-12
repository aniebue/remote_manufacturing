#Remote Machine

## Setup

The first thing to do is to clone the repository:

```sh
$ git clone https://github.com/aniebue/remote_manufacturing
$ cd remote-machine
```

Create a virtual environment to install dependencies in and activate it:

```sh
$ python -m venv env
$ source env/bin/activate
```

Then install the dependencies:

```sh
(env)$ pip install -r requirements.txt
```
Note the `(env)` in front of the prompt. This indicates that this terminal
session operates in a virtual environment set up by `virtualenv2`.

Once `pip` has finished downloading the dependencies:
```sh
(env)$ cd project
(env)$ python manage.py runserver
```
And navigate to `http://127.0.0.1:8000/`.



## Walkthrough

visit `http://127.0.0.1:8000/`. Login with as either Worker, Expert or Serviceman

### Worker

View a dashboard of all the machines available.

From each machine tab you can monitor machine, Request expert assistance, Report Machine failure, send service reminder and view machine Alarms.

view Requests (solved and unsolved).

Contact the Machine Expert and Serviceman.

See Notification of all and new requests


### Expert

View a dashboard of all the machines available.

From each machine tab you can Monitor Machine, Give new instruction to machine, Request maintenance, provide assistance send service reminder and view machine Alarms

view Requests (solved and unsolved).

Contact the Machine Worker and Serviceman.

See Notification of all and new requests

### Serviceman

View a dashboard of all the machines available.

From each machine tab you can Run Maintenance and Request Assistance

view Requests (solved and unsolved).

Contact the Machine Worker and Expert.

See Notification of all and new requests


