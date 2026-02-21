#define CATCH_CONFIG_MAIN
#include "../src/main.cpp"
#include "catch.hpp"

TEST_CASE("Contar calificaciones validas") {
    int calificaciones1[] = {5, 3, -1, 4, -2, 0};
    REQUIRE(contarCalificacionesValidas(calificaciones1, 6) == 4);

    int calificaciones2[] = {-5, -3, -1, -4, -2, -0};
    REQUIRE(contarCalificacionesValidas(calificaciones2, 6) == 0);

    int calificaciones3[] = {5, 3, 1, 4, 2, 0};
    REQUIRE(contarCalificacionesValidas(calificaciones3, 6) == 6);
}