package com.example.backendolimpicos.Services;

import com.example.backendolimpicos.Config.Conexion;
import com.example.backendolimpicos.Models.Juegos;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class JuegosDb {
    Connection con;

    public JuegosDb() {
        con = new Conexion().openDb();
    }


    public List<Juegos> ObtenerJuegos() {
        try {
            Statement stmt = con.createStatement();
            String query = "SELECT * FROM proximamente";
            List<Juegos> productos = new ArrayList<>();
            ResultSet result = stmt.executeQuery(query);
            while (result.next()) {
                Juegos producto = new Juegos(
                        result.getInt("id"),
                        result.getString("titulo"),
                        result.getString("descripcion"),
                        result.getString("foto"),
                        result.getDouble("precio"));
                productos.add(producto);
            }
            stmt.close();
            result.close();
            return productos;
        } catch (Exception e) {
            int x = 1;
        }
        return null;
    }

}
