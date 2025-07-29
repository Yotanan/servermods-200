// --- Configuración de Receta Personalizada para el Vendaje de First Aid ---

// ¡IMPORTANTE! Usamos 'craftingTable' para añadir y eliminar recetas.
// El ID del vendaje es: <item:firstaid:bandage>
// Para cualquier tipo de lana, usamos el tag: <tag:items:minecraft:wool>
// Para el hilo: <item:minecraft:string>

// 1. Eliminar cualquier receta existente del vendaje para evitar conflictos.
craftingTable.remove(<item:firstaid:bandage>);

// 2. Añadir la nueva receta con forma para el vendaje.
//    Nombre de la receta (único): "firstaid_vendaje_personalizado_final"
//    Salida: 2 Vendajes de First Aid (<item:firstaid:bandage> * 2)
//    Entrada (3x3):
//    S = <item:minecraft:string> (Hilo)
//    W = <tag:items:minecraft:wool> (Cualquier Lana)

craftingTable.addShaped("firstaid_vendaje_personalizado_final", <item:firstaid:bandage> * 2, [
  [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], // Primera fila
  [<item:minecraft:string>, <tag:items:minecraft:wool>, <item:minecraft:string>], // Segunda fila
  [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]  // Tercera fila
]);

// Notas:
// - Los IDs de ítems usan <item:modid:itemname>.
// - Los tags de ítems usan <tag:items:minecraft:tag_name>.
// - Todas las funciones de crafteo (añadir/eliminar) están bajo el objeto global 'craftingTable'.
// - ¡Usamos <item:minecraft:air> para los espacios vacíos en el patrón de crafteo!