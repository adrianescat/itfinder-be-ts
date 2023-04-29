import { FastifyPluginAsync } from 'fastify';

const routes: FastifyPluginAsync = async (fastify) => {
    fastify.get('/ping', async () => {
        return 'pong';
    });
};

export default routes;
