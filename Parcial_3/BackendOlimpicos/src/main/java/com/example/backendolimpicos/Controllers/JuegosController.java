package com.example.backendolimpicos.Controllers;

import com.example.backendolimpicos.Models.Juegos;
import com.example.backendolimpicos.Services.JuegosDb;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@RestController
public class JuegosController {
    @GetMapping("/juegos/all")
    public List<Juegos> ObtenerTodosProductos() {
        return new JuegosDb().ObtenerJuegos();

    }
}
