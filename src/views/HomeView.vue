<script setup lang="ts">
import { ref } from 'vue';
import { TheChessboard } from 'vue3-chessboard';
import 'vue3-chessboard/style.css';
import type { ChessboardAPI, BoardConfig } from 'vue3-chessboard';

const boardAPI = ref<ChessboardAPI>();
const boardConfig: BoardConfig = {
  coordinates: false,
  autoCastle: false,
};

function handleCheckmate(isMated: string) {
  if (isMated === 'w') {
    alert('Black wins!');
  } else {
    alert('White wins!');
  }
}

function toggleOrientation() {
  boardAPI.value?.board.toggleOrientation();
}

function resetBoard() {
  boardAPI.value?.resetBoard();
}
</script>

<template>
  <div>
    <header class="mb-5 ml-8 prose lg:prose-l">
      <h1>Vue3 Chessboard</h1>
    </header>
    <main class="mb-14">
      <section
        class="mb-1 ml-2 flex justify-center"
        role="region"
        aria-label="Board Controls"
      >
        <button class="btn mr-1" type="button" @click="toggleOrientation">
          Toggle orientation
        </button>
        <button class="btn mr-1" type="button" @click="resetBoard">
          Reset
        </button>
        <button
          class="btn mr-1"
          type="button"
          @click="boardAPI?.undoLastMove()"
        >
          Undo
        </button>
      </section>
      <TheChessboard
        :board-config="boardConfig"
        @board-created="(api) => (boardAPI = api)"
        @checkmate="handleCheckmate"
      />
    </main>
    <footer class="container text-center prose lg:prose-l">
      <h2 class="mb-3">Vue3 Chessboard Component</h2>
      <p>
        A Vue.js component library built with TypeScript, the
        <a href="https://github.com/lichess-org/chessground" target="_blank"
          >lichess chessground</a
        >
        and
        <a href="https://github.com/jhlywa/chess.js" target="_blank">chess.js</a
        >.
      </p>
      <div class="flex justify-between w-2/5 mx-auto mt-10">
        <div>
          <a
            href="https://www.npmjs.com/package/vue3-chessboard"
            target="_blank"
            ><svg
              width="48px"
              height="48px"
              viewBox="0 0 32 32"
              xmlns="http://www.w3.org/2000/svg"
            >
              <title>NPM</title>
              <path
                d="M2,10.555H30v9.335H16v1.556H9.778V19.889H2Zm1.556,7.779H6.667V13.666H8.222v4.667H9.778V12.111H3.556Zm7.778-6.223v7.779h3.111V18.334h3.111V12.111Zm3.111,1.556H16v3.112H14.444Zm4.667-1.556v6.223h3.111V13.666h1.556v4.667h1.556V13.666h1.556v4.667h1.556V12.111Z"
                style="fill: #cb3837"
              /></svg
          ></a>
        </div>
        <div>
          <a href="https://github.com/qwerty084/vue3-chessboard" target="_blank"
            ><svg
              width="32px"
              height="32px"
              viewBox="0 0 32 32"
              xmlns="http://www.w3.org/2000/svg"
              class="github"
            >
              <title>GitHub</title>
              <path
                d="M16 0.396c-8.839 0-16 7.167-16 16 0 7.073 4.584 13.068 10.937 15.183 0.803 0.151 1.093-0.344 1.093-0.772 0-0.38-0.009-1.385-0.015-2.719-4.453 0.964-5.391-2.151-5.391-2.151-0.729-1.844-1.781-2.339-1.781-2.339-1.448-0.989 0.115-0.968 0.115-0.968 1.604 0.109 2.448 1.645 2.448 1.645 1.427 2.448 3.744 1.74 4.661 1.328 0.14-1.031 0.557-1.74 1.011-2.135-3.552-0.401-7.287-1.776-7.287-7.907 0-1.751 0.62-3.177 1.645-4.297-0.177-0.401-0.719-2.031 0.141-4.235 0 0 1.339-0.427 4.4 1.641 1.281-0.355 2.641-0.532 4-0.541 1.36 0.009 2.719 0.187 4 0.541 3.043-2.068 4.381-1.641 4.381-1.641 0.859 2.204 0.317 3.833 0.161 4.235 1.015 1.12 1.635 2.547 1.635 4.297 0 6.145-3.74 7.5-7.296 7.891 0.556 0.479 1.077 1.464 1.077 2.959 0 2.14-0.020 3.864-0.020 4.385 0 0.416 0.28 0.916 1.104 0.755 6.4-2.093 10.979-8.093 10.979-15.156 0-8.833-7.161-16-16-16z"
              />
            </svg>
          </a>
        </div>
      </div>
    </footer>
  </div>
</template>

<style>
.main-wrap {
  width: 98vw;
  margin-inline: auto;
}
</style>
