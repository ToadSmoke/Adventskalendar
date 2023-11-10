// netlify/functions/zeige_daten.js

exports.handler = async function (event, context) {
  try {
    const selectedName = event.queryStringParameters.name;

    // Führe hier deine serverseitige Logik aus (z.B., Daten aus einer Datenbank abrufen)
    const data = {
      end_name: 'Beispiel-Endname',
      date: '2023-12-01', // Füge das Datum hier ein
    };

    return {
      statusCode: 200,
      body: JSON.stringify(data),
    };
  } catch (error) {
    return {
      statusCode: 500,
      body: JSON.stringify({ error: 'Internal Server Error' }),
    };
  }
};
