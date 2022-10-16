<template>
  <div class="container">
    <main class="prose lg:prose-l">
      <h1>About</h1>
      <section role="region" aria-labelledby="vue">
        <h2 id="vue">Vue 3 Component Library</h2>
        <p>
          Vue3 Chessboard is a component library written in Typescript for Vue3.
          Please note that the library is still under development and is not
          really production ready.
        </p>
      </section>
      <section role="region" aria-labelledby="target">
        <h2 id="target">Browser Target</h2>
        <p>This library only targets modern browsers.</p>
        <p>
          The vite build target is esnext and modern HTML Elements like are
          &lt;dialog&gt;&lt;dialog&gt; are being used, which only recently
          received cross browser support (Chrome, Edge, Firefox, Safari).
        </p>
        <p>
          Consider using polyfills in your project if you want to support older
          browser versions or less used ones.
        </p>
      </section>
      <section role="region" aria-labelledby="license">
        <h2 id="license">License</h2>
        <p>
          The Code is licensed under the
          <a href="https://www.gnu.org/licenses/gpl-3.0.html" target="_blank"
            >GPL License</a
          >
        </p>
      </section>
      <section role="region" aria-labelledby="credits">
        <h2 id="credits">Credits</h2>
        <p>
          This library is based on
          <a href="https://github.com/vitogit/vue-chessboard" target="_blank"
            >vue-chessboard</a
          >, a Vue2 Component Library.
        </p>
        <p>
          I updated/rewrote the library in TypeScript and added support for
          Vue3.
        </p>
        <p>
          Additionally i added features like a board reset and undo, board
          events for checkmate, a promotion dialog window etc.
        </p>
        <p>
          Please visit the
          <a
            href="https://github.com/qwerty084/vue3-chessboard/blob/main/README.md"
            target="_blank"
            >documentation on GitHub</a
          >
          for more information.
        </p>
      </section>
      <section role="region" aria-labelledby="links">
        <h2 id="links">Links</h2>
        <p>
          <a href="https://github.com/qwerty084/vue3-chessboard" target="_blank"
            >vue3-chessboard</a
          >
        </p>
        <p>
          <a
            href="https://www.npmjs.com/package/vue3-chessboard"
            target="_blank"
            >npm package</a
          >
        </p>
        <p>
          <a href="https://github.com/qwerty084" target="_blank"
            >My GitHub Page</a
          >
        </p>
      </section>
    </main>
  </div>
</template>
