import { ApolloServer } from "@apollo/server";
import { startStandaloneServer } from "@apollo/server/standalone";
import { typeDefs } from "./schema";
import { resolvers } from "./resolvers/index";

const startApolloServer = async () => {
  const server = new ApolloServer({
    typeDefs,
    resolvers
  });
  const { url } = await startStandaloneServer(server, {
    listen: { port: 5003 },
  });
  console.log(`🚀  Server is running at: ${url}`);
}

startApolloServer()