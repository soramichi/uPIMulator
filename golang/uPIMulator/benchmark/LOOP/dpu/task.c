#include <attributes.h>
#include <defs.h>
#include <stdbool.h>
#include <stdint.h>

typedef struct {
    __dma_aligned uint16_t children[1];
} InternalNodeBody;

typedef struct {
    __dma_aligned bool isLeaf;
    union {
        InternalNodeBody inl;
    } body;
} Node;

__mram_noinit Node nodes_storage[1];

int main()
{
    if (me() == 0) {
        uint16_t root = 0;
        nodes_storage[root].isLeaf = true;

        uint16_t node = root;
        while (!nodes_storage[node].isLeaf) {
            node = nodes_storage[node].body.inl.children[0];
        }
    }
    return 0;
}
