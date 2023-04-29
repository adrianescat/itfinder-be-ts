import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
    await prisma.role.upsert({
        where: { id: 1 },
        update: {},
        create: {
            code: 'superadmin',
        },
    })

    await prisma.role.upsert({
        where: { id: 2 },
        update: {},
        create: {
            code: 'admin',
        },
    })

    await prisma.role.upsert({
        where: { id: 3 },
        update: {},
        create: {
            code: 'recruiter',
        },
    })

    await prisma.role.upsert({
        where: { id: 4 },
        update: {},
        create: {
            code: 'candidate',
        },
    })

    await prisma.role.upsert({
        where: { id: 5 },
        update: {},
        create: {
            code: 'company',
        },
    })

}

main()
    .then(async () => {
        await prisma.$disconnect()
    })
    .catch(async (e) => {
        console.error(e)
        await prisma.$disconnect()
        process.exit(1)
    })