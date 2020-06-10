#!python

from flask import Flask, session, render_template, url_for, request

import MySQLdb

# jsonify es un modulo Flask que nos permite crear respuestas en JSON
# de forma sencilla.
from flask import jsonify

# Modulo python para trabajar con JSON
import json

# Vamos a llevar un log de las operaciones que realizamos para revisar
# que se ha hecho
import logging

import simbolo_model

app = Flask(__name__)

simbolo_model.init()

# Log de operaciones
LOG_FILENAME = 'rest_service.log'
logging.basicConfig(filename=LOG_FILENAME,level=logging.DEBUG)


#
# SERVICIO REST
# Este servicio sirve los elementos almacenados en la base de datos


# Crea una respuesta de error. Devuelve codigo de error e
# indica mensaje en json.
def respuesta_error(msg, codError=500) :
    data = {'error':1, 'desc':msg}
    response = app.response_class(
        response=json.dumps(data),
        status=codError,
        mimetype='application/json'
    )
    return response

# RUTAS QUE CAPTURAREMOS
#

# No tiene funcionalidad, solo sirve para que no muestre error al
# arrancar
@app.route('/')
def home():
    return "funcionando..."


########################################################################################
# GET simbolos
########################################################################################
#
# Devuelve el listado de todos los simbolos
@app.route('/simbolos', methods=["get"])
def simbolos():
    logging.debug('GET /simbolos')
    try:
        return jsonify(simbolo_model.items())
    except Exception as err:
        logging.debug('GET /simbolos - NO encontrados')
        return respuesta_error('No existen elementos', 404)



########################################################################################
# GET simbolos/idx
########################################################################################
#
# Devuelve informacion de un simbolo referenciada por el indice idx
@app.route('/simbolos/<idx>', methods=["get"])
def simbolo_get(idx):
    """
        Usar GET simbolos/idx
    """

    logging.debug('GET /simbolos/{0}'.format(idx))
    try:
        return jsonify(simbolo_model.item(idx))

    except Exception as err:
        logging.debug('GET /simbolos/{0} - NO encontrado'.format(idx))
        return respuesta_error('No existe el elemento', 404)

